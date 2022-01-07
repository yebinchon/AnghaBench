; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_path.c_init_envvars_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_path.c_init_envvars_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envvars_map = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.envvars_map*)* @init_envvars_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_envvars_map(%struct.envvars_map* %0) #0 {
  %2 = alloca %struct.envvars_map*, align 8
  store %struct.envvars_map* %0, %struct.envvars_map** %2, align 8
  br label %3

3:                                                ; preds = %27, %1
  %4 = load %struct.envvars_map*, %struct.envvars_map** %2, align 8
  %5 = getelementptr inbounds %struct.envvars_map, %struct.envvars_map* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = load %struct.envvars_map*, %struct.envvars_map** %2, align 8
  %10 = getelementptr inbounds %struct.envvars_map, %struct.envvars_map* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.envvars_map*, %struct.envvars_map** %2, align 8
  %13 = getelementptr inbounds %struct.envvars_map, %struct.envvars_map* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ExpandEnvironmentStringsW(i64 %11, i32 %14, i32 1)
  %16 = load %struct.envvars_map*, %struct.envvars_map** %2, align 8
  %17 = getelementptr inbounds %struct.envvars_map, %struct.envvars_map* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.envvars_map*, %struct.envvars_map** %2, align 8
  %19 = getelementptr inbounds %struct.envvars_map, %struct.envvars_map* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %8
  %23 = load %struct.envvars_map*, %struct.envvars_map** %2, align 8
  %24 = getelementptr inbounds %struct.envvars_map, %struct.envvars_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %22, %8
  %28 = load %struct.envvars_map*, %struct.envvars_map** %2, align 8
  %29 = getelementptr inbounds %struct.envvars_map, %struct.envvars_map* %28, i32 1
  store %struct.envvars_map* %29, %struct.envvars_map** %2, align 8
  br label %3

30:                                               ; preds = %3
  ret void
}

declare dso_local i64 @ExpandEnvironmentStringsW(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
