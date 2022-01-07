; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i8, i64, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@LJ_ERR_XAMBIG = common dso_local global i32 0, align 4
@VVOID = common dso_local global i64 0, align 8
@VCALL = common dso_local global i64 0, align 8
@TK_string = common dso_local global i8 0, align 1
@VKSTR = common dso_local global i64 0, align 8
@LJ_ERR_XFUNARG = common dso_local global i32 0, align 4
@VNONRELOC = common dso_local global i64 0, align 8
@BC_CALLM = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@BC_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_27__*)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(%struct.TYPE_25__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %5, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 40
  br i1 %20, label %21, label %58

21:                                               ; preds = %2
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = load i32, i32* @LJ_ERR_XAMBIG, align 4
  %30 = call i32 @err_syntax(%struct.TYPE_25__* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %33 = call i32 @lj_lex_next(%struct.TYPE_25__* %32)
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 41
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i64, i64* @VVOID, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %54

42:                                               ; preds = %31
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = call i32 @expr_list(%struct.TYPE_25__* %43, %struct.TYPE_27__* %6)
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VCALL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %51 = call i32 @bcptr(%struct.TYPE_26__* %50, %struct.TYPE_27__* %6)
  %52 = call i32 @setbc_b(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %49, %42
  br label %54

54:                                               ; preds = %53, %39
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @lex_match(%struct.TYPE_25__* %55, i8 signext 41, i8 signext 40, i64 %56)
  br label %91

58:                                               ; preds = %2
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 8
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 123
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %66 = call i32 @expr_table(%struct.TYPE_25__* %65, %struct.TYPE_27__* %6)
  br label %90

67:                                               ; preds = %58
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load i8, i8* %69, align 8
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* @TK_string, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load i64, i64* @VKSTR, align 8
  %77 = call i32 @expr_init(%struct.TYPE_27__* %6, i64 %76, i32 0)
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 3
  %80 = call i32 @strV(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = call i32 @lj_lex_next(%struct.TYPE_25__* %83)
  br label %89

85:                                               ; preds = %67
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %87 = load i32, i32* @LJ_ERR_XFUNARG, align 4
  %88 = call i32 @err_syntax(%struct.TYPE_25__* %86, i32 %87)
  br label %167

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %64
  br label %91

91:                                               ; preds = %90, %54
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VNONRELOC, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @lua_assert(i32 %97)
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %8, align 4
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VCALL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %91
  %109 = load i32, i32* @BC_CALLM, align 4
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @LJ_FR2, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @BCINS_ABC(i32 %109, i32 %110, i32 2, i32 %119)
  store i32 %120, i32* %7, align 4
  br label %140

121:                                              ; preds = %91
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @VVOID, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %128 = call i32 @expr_tonextreg(%struct.TYPE_26__* %127, %struct.TYPE_27__* %6)
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* @BC_CALL, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* @LJ_FR2, align 4
  %138 = sub nsw i32 %136, %137
  %139 = call i32 @BCINS_ABC(i32 %130, i32 %131, i32 2, i32 %138)
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %129, %108
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %142 = load i64, i64* @VCALL, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @bcemit_INS(%struct.TYPE_26__* %143, i32 %144)
  %146 = call i32 @expr_init(%struct.TYPE_27__* %141, i64 %142, i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  %152 = load i64, i64* %9, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  store i64 %152, i64* %162, align 8
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %140, %85
  ret void
}

declare dso_local i32 @err_syntax(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_25__*) #1

declare dso_local i32 @expr_list(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @setbc_b(i32, i32) #1

declare dso_local i32 @bcptr(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @lex_match(%struct.TYPE_25__*, i8 signext, i8 signext, i64) #1

declare dso_local i32 @expr_table(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @expr_init(%struct.TYPE_27__*, i64, i32) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @BCINS_ABC(i32, i32, i32, i32) #1

declare dso_local i32 @expr_tonextreg(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @bcemit_INS(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
