; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_params.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@TK_name = common dso_local global i8 0, align 1
@LJ_52 = common dso_local global i32 0, align 4
@TK_goto = common dso_local global i8 0, align 1
@TK_dots = common dso_local global i8 0, align 1
@PROTO_VARARG = common dso_local global i32 0, align 4
@LJ_ERR_XPARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32)* @parse_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_params(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = call i32 @lex_check(%struct.TYPE_13__* %10, i8 signext 40)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %6, align 8
  %18 = trunc i64 %16 to i32
  %19 = call i32 @var_new_lit(%struct.TYPE_13__* %15, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 41
  br i1 %25, label %26, label %81

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %76, %26
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @TK_name, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @LJ_52, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 8
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @TK_goto, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38, %27
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %6, align 8
  %50 = trunc i64 %48 to i32
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = call i32 @lex_str(%struct.TYPE_13__* %51)
  %53 = call i32 @var_new(%struct.TYPE_13__* %47, i32 %50, i32 %52)
  br label %75

54:                                               ; preds = %38, %35
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 8
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* @TK_dots, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = call i32 @lj_lex_next(%struct.TYPE_13__* %63)
  %65 = load i32, i32* @PROTO_VARARG, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %80

70:                                               ; preds = %54
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = load i32, i32* @LJ_ERR_XPARAM, align 4
  %73 = call i32 @err_syntax(%struct.TYPE_13__* %71, i32 %72)
  br label %74

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = call i64 @lex_opt(%struct.TYPE_13__* %77, i8 signext 44)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %27, label %80

80:                                               ; preds = %76, %62
  br label %81

81:                                               ; preds = %80, %20
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @var_add(%struct.TYPE_13__* %82, i64 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @lua_assert(i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @bcreg_reserve(%struct.TYPE_14__* %92, i64 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = call i32 @lex_check(%struct.TYPE_13__* %95, i8 signext 41)
  %97 = load i64, i64* %6, align 8
  ret i64 %97
}

declare dso_local i32 @lex_check(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32 @var_new_lit(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @var_new(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @lex_str(%struct.TYPE_13__*) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_13__*) #1

declare dso_local i32 @err_syntax(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @lex_opt(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32 @var_add(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @bcreg_reserve(%struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
