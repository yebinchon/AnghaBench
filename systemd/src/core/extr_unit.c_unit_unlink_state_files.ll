; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_unlink_state_files.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_unlink_state_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"/run/systemd/units/invocation:\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"/run/systemd/units/log-level-max:\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"/run/systemd/units/extra-fields:\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"/run/systemd/units/log-rate-limit-interval:\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"/run/systemd/units/log-rate-limit-burst:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unit_unlink_state_files(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_4__* %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %88

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MANAGER_IS_SYSTEM(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %88

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @strjoina(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @unlink(i8* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @strjoina(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @unlink(i8* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %32
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @strjoina(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @unlink(i8* %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %46
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @strjoina(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  store i8* %69, i8** %3, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @unlink(i8* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %60
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @strjoina(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  store i8* %83, i8** %3, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @unlink(i8* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %10, %17, %79, %74
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @MANAGER_IS_SYSTEM(i32) #1

declare dso_local i8* @strjoina(i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
