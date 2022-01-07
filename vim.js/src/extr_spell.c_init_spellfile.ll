; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_spell.c_init_spellfile.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_spell.c_init_spellfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64* }

@FALSE = common dso_local global i32 0, align 4
@curbuf = common dso_local global %struct.TYPE_12__* null, align 8
@curwin = common dso_local global %struct.TYPE_11__* null, align 8
@NUL = common dso_local global i64 0, align 8
@MAXPATHL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c",._\00", align 1
@TRUE = common dso_local global i32 0, align 4
@p_rtp = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"/spell\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/%.*s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".%s.add\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".ascii.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"spellfile\00", align 1
@OPT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_spellfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_spellfile() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curbuf, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NUL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %210

21:                                               ; preds = %0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %210

29:                                               ; preds = %21
  %30 = load i64, i64* @MAXPATHL, align 8
  %31 = call i64* @alloc(i64 %30)
  store i64* %31, i64** %1, align 8
  %32 = load i64*, i64** %1, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %210

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  store i64* %40, i64** %5, align 8
  br label %41

41:                                               ; preds = %63, %35
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NUL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32* @vim_strchr(i64* bitcast ([4 x i8]* @.str to i64*), i64 %48)
  %50 = icmp eq i32* %49, null
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @vim_ispathsep(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64* %61, i64** %7, align 8
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %5, align 8
  br label %41

66:                                               ; preds = %51
  %67 = load i64*, i64** @p_rtp, align 8
  store i64* %67, i64** %4, align 8
  br label %68

68:                                               ; preds = %205, %66
  %69 = load i64*, i64** %4, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NUL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %207

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  %77 = load i64*, i64** %1, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curbuf, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curbuf, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = ptrtoint i64* %82 to i64
  %88 = ptrtoint i64* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 8
  %91 = sub nsw i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i32 @vim_strncpy(i64* %77, i64* %81, i32 %92)
  br label %98

94:                                               ; preds = %73
  %95 = load i64*, i64** %1, align 8
  %96 = load i64, i64* @MAXPATHL, align 8
  %97 = call i32 @copy_option_part(i64** %4, i64* %95, i64 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %76
  %99 = load i64*, i64** %1, align 8
  %100 = call i32 @filewritable(i64* %99)
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %205

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load i64*, i64** %1, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curbuf, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64*, i64** %5, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curbuf, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = ptrtoint i64* %111 to i64
  %117 = ptrtoint i64* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @vim_strncpy(i64* %106, i64* %110, i32 %120)
  br label %164

122:                                              ; preds = %102
  %123 = load i64*, i64** %1, align 8
  %124 = call i64 @STRLEN(i64* %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %2, align 4
  %126 = load i64*, i64** %1, align 8
  %127 = bitcast i64* %126 to i8*
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i64, i64* @MAXPATHL, align 8
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %131, %133
  %135 = call i32 (i8*, i64, i8*, ...) @vim_snprintf(i8* %130, i64 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i64*, i64** %1, align 8
  %137 = call i32 @filewritable(i64* %136)
  %138 = icmp ne i32 %137, 2
  br i1 %138, label %139, label %142

139:                                              ; preds = %122
  %140 = load i64*, i64** %1, align 8
  %141 = call i32 @vim_mkdir(i64* %140, i32 493)
  br label %142

142:                                              ; preds = %139, %122
  %143 = load i64*, i64** %1, align 8
  %144 = call i64 @STRLEN(i64* %143)
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %2, align 4
  %146 = load i64*, i64** %1, align 8
  %147 = bitcast i64* %146 to i8*
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i64, i64* @MAXPATHL, align 8
  %152 = load i32, i32* %2, align 4
  %153 = sext i32 %152 to i64
  %154 = sub nsw i64 %151, %153
  %155 = load i64*, i64** %5, align 8
  %156 = load i64*, i64** %7, align 8
  %157 = ptrtoint i64* %155 to i64
  %158 = ptrtoint i64* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 8
  %161 = trunc i64 %160 to i32
  %162 = load i64*, i64** %7, align 8
  %163 = call i32 (i8*, i64, i8*, ...) @vim_snprintf(i8* %150, i64 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %161, i64* %162)
  br label %164

164:                                              ; preds = %142, %105
  %165 = load i64*, i64** %1, align 8
  %166 = call i64 @STRLEN(i64* %165)
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %2, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call %struct.TYPE_13__* @LANGP_ENTRY(i64 %173, i32 0)
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  store i64* %178, i64** %3, align 8
  %179 = load i64*, i64** %1, align 8
  %180 = bitcast i64* %179 to i8*
  %181 = load i32, i32* %2, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i64, i64* @MAXPATHL, align 8
  %185 = load i32, i32* %2, align 4
  %186 = sext i32 %185 to i64
  %187 = sub nsw i64 %184, %186
  %188 = load i64*, i64** %3, align 8
  %189 = icmp ne i64* %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %164
  %191 = load i64*, i64** %3, align 8
  %192 = call i64 @gettail(i64* %191)
  %193 = inttoptr i64 %192 to i8*
  %194 = call i32* @strstr(i8* %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %199

197:                                              ; preds = %190, %164
  %198 = call i64* (...) @spell_enc()
  br label %199

199:                                              ; preds = %197, %196
  %200 = phi i64* [ bitcast ([6 x i8]* @.str.6 to i64*), %196 ], [ %198, %197 ]
  %201 = call i32 (i8*, i64, i8*, ...) @vim_snprintf(i8* %183, i64 %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64* %200)
  %202 = load i64*, i64** %1, align 8
  %203 = load i32, i32* @OPT_LOCAL, align 4
  %204 = call i32 @set_option_value(i64* bitcast ([10 x i8]* @.str.7 to i64*), i64 0, i64* %202, i32 %203)
  br label %207

205:                                              ; preds = %98
  %206 = load i32, i32* @FALSE, align 4
  store i32 %206, i32* %6, align 4
  br label %68

207:                                              ; preds = %199, %68
  %208 = load i64*, i64** %1, align 8
  %209 = call i32 @vim_free(i64* %208)
  br label %210

210:                                              ; preds = %34, %207, %21, %0
  ret void
}

declare dso_local i64* @alloc(i64) #1

declare dso_local i32* @vim_strchr(i64*, i64) #1

declare dso_local i64 @vim_ispathsep(i64) #1

declare dso_local i32 @vim_strncpy(i64*, i64*, i32) #1

declare dso_local i32 @copy_option_part(i64**, i64*, i64, i8*) #1

declare dso_local i32 @filewritable(i64*) #1

declare dso_local i64 @STRLEN(i64*) #1

declare dso_local i32 @vim_snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @vim_mkdir(i64*, i32) #1

declare dso_local %struct.TYPE_13__* @LANGP_ENTRY(i64, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i64 @gettail(i64*) #1

declare dso_local i64* @spell_enc(...) #1

declare dso_local i32 @set_option_value(i64*, i64, i64*, i32) #1

declare dso_local i32 @vim_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
