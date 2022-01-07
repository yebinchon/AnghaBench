; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_exec_selinux_context.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_exec_selinux_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to resolve unit specifiers in '%s'%s: %m\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c", ignoring\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_exec_selinux_context(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %22, align 8
  %29 = load i8*, i8** %21, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %23, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %17, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %20, align 8
  %38 = call i32 @assert(i8* %37)
  %39 = load i8*, i8** %19, align 8
  %40 = call i64 @isempty(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %10
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mfree(i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  store i32 0, i32* %11, align 4
  br label %96

51:                                               ; preds = %10
  %52 = load i8*, i8** %19, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 45
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  store i32 1, i32* %24, align 4
  %58 = load i8*, i8** %19, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %19, align 8
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %24, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32*, i32** %23, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = call i32 @unit_full_printf(i32* %62, i8* %63, i8** %25)
  store i32 %64, i32* %26, align 4
  %65 = load i32, i32* %26, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %61
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* @LOG_ERR, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %26, align 4
  %73 = load i8*, i8** %19, align 8
  %74 = load i32, i32* %24, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %78 = call i32 @log_syntax(i8* %68, i32 %69, i8* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %77)
  %79 = load i32, i32* %24, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %85

82:                                               ; preds = %67
  %83 = load i32, i32* @ENOEXEC, align 4
  %84 = sub nsw i32 0, %83
  br label %85

85:                                               ; preds = %82, %81
  %86 = phi i32 [ 0, %81 ], [ %84, %82 ]
  store i32 %86, i32* %11, align 4
  br label %96

87:                                               ; preds = %61
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %25, align 8
  %92 = call i32 @free_and_replace(i32 %90, i8* %91)
  %93 = load i32, i32* %24, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %87, %85, %42
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @mfree(i32) #1

declare dso_local i32 @unit_full_printf(i32*, i8*, i8**) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @free_and_replace(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
