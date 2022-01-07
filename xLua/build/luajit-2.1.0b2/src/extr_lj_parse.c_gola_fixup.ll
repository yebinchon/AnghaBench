; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_gola_fixup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_gola_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, i32, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@FSCOPE_UPVAL = common dso_local global i32 0, align 4
@NAME_BREAK = common dso_local global i32* null, align 8
@FSCOPE_BREAK = common dso_local global i32 0, align 4
@FSCOPE_GOLA = common dso_local global i32 0, align 4
@LJ_ERR_XBREAK = common dso_local global i32 0, align 4
@LJ_ERR_XLUNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*)* @gola_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gola_fixup(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i64 %15
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %5, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %23
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %6, align 8
  br label %25

25:                                               ; preds = %164, %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = icmp ult %struct.TYPE_20__* %26, %27
  br i1 %28, label %29, label %167

29:                                               ; preds = %25
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @strref(i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %163

36:                                               ; preds = %29
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = call i64 @gola_islabel(%struct.TYPE_20__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @setgcrefnull(i32 %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i64 1
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %8, align 8
  br label %47

47:                                               ; preds = %87, %40
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = icmp ult %struct.TYPE_20__* %48, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %47
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @strref(i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = call i64 @gola_isgoto(%struct.TYPE_20__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FSCOPE_UPVAL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %80 = call i32 @gola_close(%struct.TYPE_21__* %78, %struct.TYPE_20__* %79)
  br label %81

81:                                               ; preds = %77, %69, %62
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %85 = call i32 @gola_patch(%struct.TYPE_21__* %82, %struct.TYPE_20__* %83, %struct.TYPE_20__* %84)
  br label %86

86:                                               ; preds = %81, %58, %51
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 1
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %8, align 8
  br label %47

90:                                               ; preds = %47
  br label %162

91:                                               ; preds = %36
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %93 = call i64 @gola_isgoto(%struct.TYPE_20__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %161

95:                                               ; preds = %91
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = icmp ne %struct.TYPE_17__* %98, null
  br i1 %99, label %100, label %132

100:                                              ; preds = %95
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** @NAME_BREAK, align 8
  %103 = icmp eq i32* %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @FSCOPE_BREAK, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @FSCOPE_GOLA, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @FSCOPE_UPVAL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %108
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = call i32 @gola_close(%struct.TYPE_21__* %128, %struct.TYPE_20__* %129)
  br label %131

131:                                              ; preds = %127, %108
  br label %160

132:                                              ; preds = %95
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** @NAME_BREAK, align 8
  %148 = icmp eq i32* %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %132
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %151 = load i32, i32* @LJ_ERR_XBREAK, align 4
  %152 = call i32 (%struct.TYPE_21__*, i32, i32, ...) @lj_lex_error(%struct.TYPE_21__* %150, i32 0, i32 %151)
  br label %159

153:                                              ; preds = %132
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %155 = load i32, i32* @LJ_ERR_XLUNDEF, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @strdata(i32* %156)
  %158 = call i32 (%struct.TYPE_21__*, i32, i32, ...) @lj_lex_error(%struct.TYPE_21__* %154, i32 0, i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %153, %149
  br label %160

160:                                              ; preds = %159, %131
  br label %161

161:                                              ; preds = %160, %91
  br label %162

162:                                              ; preds = %161, %90
  br label %163

163:                                              ; preds = %162, %29
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 1
  store %struct.TYPE_20__* %166, %struct.TYPE_20__** %5, align 8
  br label %25

167:                                              ; preds = %25
  ret void
}

declare dso_local i32* @strref(i32) #1

declare dso_local i64 @gola_islabel(%struct.TYPE_20__*) #1

declare dso_local i32 @setgcrefnull(i32) #1

declare dso_local i64 @gola_isgoto(%struct.TYPE_20__*) #1

declare dso_local i32 @gola_close(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @gola_patch(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @lj_lex_error(%struct.TYPE_21__*, i32, i32, ...) #1

declare dso_local i32 @strdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
