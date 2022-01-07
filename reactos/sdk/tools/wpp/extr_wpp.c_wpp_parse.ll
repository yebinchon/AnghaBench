; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_wpp.c_wpp_parse.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_wpp.c_wpp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i8*, i32)* }

@pp_status = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stdin = common dso_local global i32 0, align 4
@wpp_callbacks = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@ppy_out = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"# 1 \22%s\22 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpp_parse(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 2), align 8
  %7 = call i32 (...) @pp_push_define_state()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %81

12:                                               ; preds = %2
  %13 = call i32 (...) @add_cmdline_defines()
  %14 = call i32 (...) @add_special_defines()
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @stdin, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 4), align 8
  br label %33

19:                                               ; preds = %12
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wpp_callbacks, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (i8*, i32)*, i32 (i8*, i32)** %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 %22(i8* %23, i32 1)
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 4), align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @ppy_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 (...) @del_special_defines()
  %30 = call i32 (...) @del_cmdline_defines()
  %31 = call i32 (...) @pp_pop_define_state()
  store i32 2, i32* %3, align 4
  br label %81

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = call i32* @pp_xstrdup(i8* %37)
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32* [ %38, %36 ], [ null, %39 ]
  store i32* %41, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 3), align 8
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** @ppy_out, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  br label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %47 ]
  %50 = call i32 @pp_writestring(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = call i32 (...) @ppy_parse()
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 2), align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 2), align 8
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %54, %48
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wpp_callbacks, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 4), align 8
  %67 = call i32 %65(i32 %66)
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pp_status, i32 0, i32 3), align 8
  %69 = call i32 @free(i32* %68)
  br label %70

70:                                               ; preds = %62, %59
  br label %71

71:                                               ; preds = %74, %70
  %72 = call i64 (...) @pp_get_if_depth()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (...) @pp_pop_if()
  br label %71

76:                                               ; preds = %71
  %77 = call i32 (...) @del_special_defines()
  %78 = call i32 (...) @del_cmdline_defines()
  %79 = call i32 (...) @pp_pop_define_state()
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %26, %10
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @pp_push_define_state(...) #1

declare dso_local i32 @add_cmdline_defines(...) #1

declare dso_local i32 @add_special_defines(...) #1

declare dso_local i32 @ppy_error(i8*, i8*) #1

declare dso_local i32 @del_special_defines(...) #1

declare dso_local i32 @del_cmdline_defines(...) #1

declare dso_local i32 @pp_pop_define_state(...) #1

declare dso_local i32* @pp_xstrdup(i8*) #1

declare dso_local i32 @pp_writestring(i8*, i8*) #1

declare dso_local i32 @ppy_parse(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @pp_get_if_depth(...) #1

declare dso_local i32 @pp_pop_if(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
