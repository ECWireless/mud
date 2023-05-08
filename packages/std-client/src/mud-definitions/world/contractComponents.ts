/* Autogenerated file. Do not edit manually. */

import { TableId } from "@latticexyz/utils";
import { defineComponent, Type as RecsType, World } from "@latticexyz/recs";

export function defineContractComponents(world: World) {
  return {
    NamespaceOwner: (() => {
      const tableId = new TableId("", "NamespaceOwner");
      return defineComponent(
        world,
        {
          owner: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    ResourceAccess: (() => {
      const tableId = new TableId("", "ResourceAccess");
      return defineComponent(
        world,
        {
          access: RecsType.Boolean,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    InstalledModules: (() => {
      const tableId = new TableId("", "InstalledModules");
      return defineComponent(
        world,
        {
          moduleAddress: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Systems: (() => {
      const tableId = new TableId("", "Systems");
      return defineComponent(
        world,
        {
          system: RecsType.String,
          publicAccess: RecsType.Boolean,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    SystemRegistry: (() => {
      const tableId = new TableId("", "SystemRegistry");
      return defineComponent(
        world,
        {
          resourceSelector: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    ResourceType: (() => {
      const tableId = new TableId("", "ResourceType");
      return defineComponent(
        world,
        {
          resourceType: RecsType.Number,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    FunctionSelectors: (() => {
      const tableId = new TableId("", "FunctionSelector");
      return defineComponent(
        world,
        {
          namespace: RecsType.String,
          name: RecsType.String,
          systemFunctionSelector: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
  };
}
