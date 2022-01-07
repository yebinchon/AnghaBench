; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/util/extr_hb-fc-list.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/util/extr_hb-fc-list.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"Unable to parse the pattern\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@FC_FAMILY = common dso_local global i32 0, align 4
@FC_STYLE = common dso_local global i32 0, align 4
@FC_FILE = common dso_local global i32 0, align 4
@FC_CHARSET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%{=fclist}\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FC_MAJOR = common dso_local global i32 0, align 4
@FC_MINOR = common dso_local global i32 0, align 4
@FC_REVISION = common dso_local global i32 0, align 4
@longopts = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i32 1, i32* %10, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @usage(i8* %28, i32 1)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %14, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %79

44:                                               ; preds = %30
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @FcNameParse(i8* %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 1, i32* %3, align 4
  br label %220

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %70, %56
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32* (...) @FcObjectSetCreate()
  store i32* %69, i32** %11, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32*, i32** %11, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @FcObjectSetAdd(i32* %71, i8* %76)
  br label %57

78:                                               ; preds = %57
  br label %81

79:                                               ; preds = %30
  %80 = call i32* (...) @FcPatternCreate()
  store i32* %80, i32** %13, align 8
  br label %81

81:                                               ; preds = %79, %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32* (...) @FcObjectSetCreate()
  store i32* %88, i32** %11, align 8
  br label %89

89:                                               ; preds = %87, %84, %81
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load i32*, i32** %11, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @FC_FAMILY, align 4
  %100 = load i32, i32* @FC_STYLE, align 4
  %101 = load i32, i32* @FC_FILE, align 4
  %102 = call i32* @FcObjectSetBuild(i32 %99, i32 %100, i32 %101, i8* null)
  store i32* %102, i32** %11, align 8
  br label %103

103:                                              ; preds = %98, %95, %92, %89
  %104 = load i32*, i32** %11, align 8
  %105 = load i8*, i8** @FC_CHARSET, align 8
  %106 = call i32 @FcObjectSetAdd(i32* %104, i8* %105)
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %110

110:                                              ; preds = %109, %103
  %111 = load i32*, i32** %13, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call %struct.TYPE_4__* @FcFontList(i32 0, i32* %111, i32* %112)
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %12, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @FcObjectSetDestroy(i32* %117)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i32*, i32** %13, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** %13, align 8
  %124 = call i32 @FcPatternDestroy(i32* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %199, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %130 = icmp ne %struct.TYPE_4__* %129, null
  br i1 %130, label %131, label %199

131:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %195, %131
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %198

138:                                              ; preds = %132
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32* @hb_fc_font_create(i32 %145)
  store i32* %146, i32** %16, align 8
  %147 = load i32*, i32** %16, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @hb_fc_can_render(i32* %147, i8* %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32*, i32** %16, align 8
  %151 = call i32 @hb_font_destroy(i32* %150)
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %138
  br label %195

155:                                              ; preds = %138
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i8*, i8** @FC_CHARSET, align 8
  %164 = call i32 @FcPatternDel(i32 %162, i8* %163)
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %155
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @FcPatternPrint(i32 %174)
  br label %194

176:                                              ; preds = %155
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i8*, i8** %8, align 8
  %185 = call i8* @FcPatternFormat(i32 %183, i8* %184)
  store i8* %185, i8** %18, align 8
  %186 = load i8*, i8** %18, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %176
  %189 = load i8*, i8** %18, align 8
  %190 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %189)
  %191 = load i8*, i8** %18, align 8
  %192 = call i32 @FcStrFree(i8* %191)
  br label %193

193:                                              ; preds = %188, %176
  br label %194

194:                                              ; preds = %193, %167
  br label %195

195:                                              ; preds = %194, %154
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %132

198:                                              ; preds = %132
  br label %199

199:                                              ; preds = %198, %128, %125
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %201 = icmp ne %struct.TYPE_4__* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %9, align 4
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %207 = call i32 @FcFontSetDestroy(%struct.TYPE_4__* %206)
  br label %208

208:                                              ; preds = %202, %199
  %209 = call i32 (...) @FcFini()
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load i32, i32* %9, align 4
  %214 = icmp eq i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 1, i32 0
  br label %218

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %217, %212
  %219 = phi i32 [ %216, %212 ], [ 0, %217 ]
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %218, %53
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @usage(i8*, i32) #1

declare dso_local i32* @FcNameParse(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32* @FcObjectSetCreate(...) #1

declare dso_local i32 @FcObjectSetAdd(i32*, i8*) #1

declare dso_local i32* @FcPatternCreate(...) #1

declare dso_local i32* @FcObjectSetBuild(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @FcFontList(i32, i32*, i32*) #1

declare dso_local i32 @FcObjectSetDestroy(i32*) #1

declare dso_local i32 @FcPatternDestroy(i32*) #1

declare dso_local i32* @hb_fc_font_create(i32) #1

declare dso_local i32 @hb_fc_can_render(i32*, i8*) #1

declare dso_local i32 @hb_font_destroy(i32*) #1

declare dso_local i32 @FcPatternDel(i32, i8*) #1

declare dso_local i32 @FcPatternPrint(i32) #1

declare dso_local i8* @FcPatternFormat(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @FcStrFree(i8*) #1

declare dso_local i32 @FcFontSetDestroy(%struct.TYPE_4__*) #1

declare dso_local i32 @FcFini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
