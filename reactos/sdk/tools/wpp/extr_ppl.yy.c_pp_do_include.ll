; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_pp_do_include.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_pp_do_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i32, i8*, i64 }
%struct.TYPE_7__ = type { i32, i8*, i32, i64 }

@pp_includelogiclist = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Empty include filename\00", align 1
@pp_status = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to open include file %s\00", align 1
@pp_incl_state = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"pp_do_include: %s:%d: include_state=%d, include_ppp='%s', include_ifdepth=%d\0A\00", align 1
@YY_BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"# 1 \22%s\22 1%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" 3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_do_include(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %91

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pp_includelogiclist, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  br label %14

14:                                               ; preds = %28, %12
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcmp(i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @free(i8* %25)
  br label %91

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %7, align 8
  br label %14

32:                                               ; preds = %14
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @free(i8* %39)
  br label %91

41:                                               ; preds = %32
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i32, i32* %4, align 4
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pp_status, i32 0, i32 0), align 8
  %51 = call i8* @pp_open_include(i8* %48, i32 %49, i8* %50, i8** %5)
  store i8* %51, i8** %8, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @free(i8* %57)
  br label %91

59:                                               ; preds = %41
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 %61, i8* %66, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @push_buffer(i32* null, i8* %67, i8* %68, i32 0)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pp_incl_state, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pp_incl_state, i32 0, i32 0), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pp_incl_state, i32 0, i32 1), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pp_status, i32 0, i32 3), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %59
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pp_status, i32 0, i32 0), align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pp_status, i32 0, i32 1), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pp_incl_state, i32 0, i32 0), align 8
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pp_incl_state, i32 0, i32 1), align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pp_incl_state, i32 0, i32 2), align 8
  %79 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i8* %74, i32 %75, i32 %76, i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %59
  %81 = load i8*, i8** %8, align 8
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pp_status, i32 0, i32 2), align 8
  %82 = load i32, i32* @YY_BUF_SIZE, align 4
  %83 = call i32 @ppy__create_buffer(i32* null, i32 %82)
  %84 = call i32 @ppy__switch_to_buffer(i32 %83)
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %90 = call i32 @pp_writestring(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %85, i8* %89)
  br label %91

91:                                               ; preds = %80, %53, %37, %24, %11
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ppy_error(i8*, ...) #1

declare dso_local i8* @pp_open_include(i8*, i32, i8*, i8**) #1

declare dso_local i32 @push_buffer(i32*, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @ppy__switch_to_buffer(i32) #1

declare dso_local i32 @ppy__create_buffer(i32*, i32) #1

declare dso_local i32 @pp_writestring(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
