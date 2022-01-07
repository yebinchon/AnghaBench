; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_getstate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_getstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { %struct.config*, i64, i64, %struct.config* }
%struct.config = type { i64, i64, %struct.config* }
%struct.lemon = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.state* @getstate(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca %struct.config*, align 8
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.config*, align 8
  %7 = alloca %struct.config*, align 8
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  %8 = call i32 (...) @Configlist_sortbasis()
  %9 = call %struct.config* (...) @Configlist_basis()
  store %struct.config* %9, %struct.config** %4, align 8
  %10 = load %struct.config*, %struct.config** %4, align 8
  %11 = call %struct.state* @State_find(%struct.config* %10)
  store %struct.state* %11, %struct.state** %5, align 8
  %12 = load %struct.state*, %struct.state** %5, align 8
  %13 = icmp ne %struct.state* %12, null
  br i1 %13, label %14, label %53

14:                                               ; preds = %1
  %15 = load %struct.config*, %struct.config** %4, align 8
  store %struct.config* %15, %struct.config** %6, align 8
  %16 = load %struct.state*, %struct.state** %5, align 8
  %17 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 0
  %18 = load %struct.config*, %struct.config** %17, align 8
  store %struct.config* %18, %struct.config** %7, align 8
  br label %19

19:                                               ; preds = %42, %14
  %20 = load %struct.config*, %struct.config** %6, align 8
  %21 = icmp ne %struct.config* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.config*, %struct.config** %7, align 8
  %24 = icmp ne %struct.config* %23, null
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %49

27:                                               ; preds = %25
  %28 = load %struct.config*, %struct.config** %7, align 8
  %29 = getelementptr inbounds %struct.config, %struct.config* %28, i32 0, i32 0
  %30 = load %struct.config*, %struct.config** %6, align 8
  %31 = getelementptr inbounds %struct.config, %struct.config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @Plink_copy(i64* %29, i64 %32)
  %34 = load %struct.config*, %struct.config** %6, align 8
  %35 = getelementptr inbounds %struct.config, %struct.config* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @Plink_delete(i64 %36)
  %38 = load %struct.config*, %struct.config** %6, align 8
  %39 = getelementptr inbounds %struct.config, %struct.config* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.config*, %struct.config** %6, align 8
  %41 = getelementptr inbounds %struct.config, %struct.config* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %27
  %43 = load %struct.config*, %struct.config** %6, align 8
  %44 = getelementptr inbounds %struct.config, %struct.config* %43, i32 0, i32 2
  %45 = load %struct.config*, %struct.config** %44, align 8
  store %struct.config* %45, %struct.config** %6, align 8
  %46 = load %struct.config*, %struct.config** %7, align 8
  %47 = getelementptr inbounds %struct.config, %struct.config* %46, i32 0, i32 2
  %48 = load %struct.config*, %struct.config** %47, align 8
  store %struct.config* %48, %struct.config** %7, align 8
  br label %19

49:                                               ; preds = %25
  %50 = call %struct.config* (...) @Configlist_return()
  store %struct.config* %50, %struct.config** %3, align 8
  %51 = load %struct.config*, %struct.config** %3, align 8
  %52 = call i32 @Configlist_eat(%struct.config* %51)
  br label %84

53:                                               ; preds = %1
  %54 = load %struct.lemon*, %struct.lemon** %2, align 8
  %55 = call i32 @Configlist_closure(%struct.lemon* %54)
  %56 = call i32 (...) @Configlist_sort()
  %57 = call %struct.config* (...) @Configlist_return()
  store %struct.config* %57, %struct.config** %3, align 8
  %58 = call %struct.state* (...) @State_new()
  store %struct.state* %58, %struct.state** %5, align 8
  %59 = load %struct.state*, %struct.state** %5, align 8
  %60 = call i32 @MemoryCheck(%struct.state* %59)
  %61 = load %struct.config*, %struct.config** %4, align 8
  %62 = load %struct.state*, %struct.state** %5, align 8
  %63 = getelementptr inbounds %struct.state, %struct.state* %62, i32 0, i32 0
  store %struct.config* %61, %struct.config** %63, align 8
  %64 = load %struct.config*, %struct.config** %3, align 8
  %65 = load %struct.state*, %struct.state** %5, align 8
  %66 = getelementptr inbounds %struct.state, %struct.state* %65, i32 0, i32 3
  store %struct.config* %64, %struct.config** %66, align 8
  %67 = load %struct.lemon*, %struct.lemon** %2, align 8
  %68 = getelementptr inbounds %struct.lemon, %struct.lemon* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = sext i32 %69 to i64
  %72 = load %struct.state*, %struct.state** %5, align 8
  %73 = getelementptr inbounds %struct.state, %struct.state* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.state*, %struct.state** %5, align 8
  %75 = getelementptr inbounds %struct.state, %struct.state* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.state*, %struct.state** %5, align 8
  %77 = load %struct.state*, %struct.state** %5, align 8
  %78 = getelementptr inbounds %struct.state, %struct.state* %77, i32 0, i32 0
  %79 = load %struct.config*, %struct.config** %78, align 8
  %80 = call i32 @State_insert(%struct.state* %76, %struct.config* %79)
  %81 = load %struct.lemon*, %struct.lemon** %2, align 8
  %82 = load %struct.state*, %struct.state** %5, align 8
  %83 = call i32 @buildshifts(%struct.lemon* %81, %struct.state* %82)
  br label %84

84:                                               ; preds = %53, %49
  %85 = load %struct.state*, %struct.state** %5, align 8
  ret %struct.state* %85
}

declare dso_local i32 @Configlist_sortbasis(...) #1

declare dso_local %struct.config* @Configlist_basis(...) #1

declare dso_local %struct.state* @State_find(%struct.config*) #1

declare dso_local i32 @Plink_copy(i64*, i64) #1

declare dso_local i32 @Plink_delete(i64) #1

declare dso_local %struct.config* @Configlist_return(...) #1

declare dso_local i32 @Configlist_eat(%struct.config*) #1

declare dso_local i32 @Configlist_closure(%struct.lemon*) #1

declare dso_local i32 @Configlist_sort(...) #1

declare dso_local %struct.state* @State_new(...) #1

declare dso_local i32 @MemoryCheck(%struct.state*) #1

declare dso_local i32 @State_insert(%struct.state*, %struct.config*) #1

declare dso_local i32 @buildshifts(%struct.lemon*, %struct.state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
