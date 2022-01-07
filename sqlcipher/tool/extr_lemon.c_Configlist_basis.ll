; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_basis.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_basis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }

@basis = common dso_local global %struct.config* null, align 8
@basisend = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config* @Configlist_basis() #0 {
  %1 = alloca %struct.config*, align 8
  %2 = load %struct.config*, %struct.config** @basis, align 8
  store %struct.config* %2, %struct.config** %1, align 8
  store %struct.config* null, %struct.config** @basis, align 8
  store i64 0, i64* @basisend, align 8
  %3 = load %struct.config*, %struct.config** %1, align 8
  ret %struct.config* %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
