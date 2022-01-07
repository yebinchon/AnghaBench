; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_tmarshal.c_create_coclass_obj.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_tmarshal.c_create_coclass_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coclass_obj = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@coclass1_vtbl = common dso_local global i32 0, align 4
@coclass2_vtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coclass_obj* ()* @create_coclass_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coclass_obj* @create_coclass_obj() #0 {
  %1 = alloca %struct.coclass_obj*, align 8
  %2 = call %struct.coclass_obj* @CoTaskMemAlloc(i32 24)
  store %struct.coclass_obj* %2, %struct.coclass_obj** %1, align 8
  %3 = load %struct.coclass_obj*, %struct.coclass_obj** %1, align 8
  %4 = getelementptr inbounds %struct.coclass_obj, %struct.coclass_obj* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32* @coclass1_vtbl, i32** %5, align 8
  %6 = load %struct.coclass_obj*, %struct.coclass_obj** %1, align 8
  %7 = getelementptr inbounds %struct.coclass_obj, %struct.coclass_obj* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32* @coclass2_vtbl, i32** %8, align 8
  %9 = load %struct.coclass_obj*, %struct.coclass_obj** %1, align 8
  %10 = getelementptr inbounds %struct.coclass_obj, %struct.coclass_obj* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.coclass_obj*, %struct.coclass_obj** %1, align 8
  ret %struct.coclass_obj* %11
}

declare dso_local %struct.coclass_obj* @CoTaskMemAlloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
