; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_deserialize_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_deserialize_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse state value: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"was-abandoned\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to parse boolean value: %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unknown serialization key: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @scope_deserialize_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scope_deserialize_item(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.TYPE_3__* @SCOPE(i8* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @assert(i8* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @streq(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @scope_state_from_string(i8* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @log_unit_debug(i8* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %40

36:                                               ; preds = %27
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %79

41:                                               ; preds = %4
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @streq(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @parse_boolean(i8* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @log_unit_debug(i8* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %78

59:                                               ; preds = %41
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @streq(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @free_and_strdup(i32* %65, i8* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 (...) @log_oom()
  store i32 %71, i32* %5, align 4
  br label %80

72:                                               ; preds = %63
  br label %77

73:                                               ; preds = %59
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @log_unit_debug(i8* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %72
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %40
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_3__* @SCOPE(i8*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @scope_state_from_string(i8*) #1

declare dso_local i32 @log_unit_debug(i8*, i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
