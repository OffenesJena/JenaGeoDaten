

[out:json][timeout:25];
(
  relation["name"="Jena"];
);
out body;
>;
out skel qt;


-----------------------------------------------------------------------------------------------------


<osm-script output="json" timeout="25">
  <!-- gather results -->
  <union>
    <query type="relation">
      <has-kv k="name" v="Jena"/>
    </query>
  </union>
  <!-- print results -->
  <print mode="body"/>
  <recurse type="down"/>
  <print mode="skeleton" order="quadtile"/>
</osm-script>
