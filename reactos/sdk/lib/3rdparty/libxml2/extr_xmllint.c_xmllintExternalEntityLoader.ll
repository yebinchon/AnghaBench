; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmllint.c_xmllintExternalEntityLoader.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmllint.c_xmllintExternalEntityLoader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i8*, i8*)*, i32* }

@nbpaths = common dso_local global i32 0, align 4
@load_trace = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Loaded URL=\22%s\22 ID=\22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@paths = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to load external entity \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_7__*)* @xmllintExternalEntityLoader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xmllintExternalEntityLoader(i8* %0, i8* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32 (%struct.TYPE_7__*, i8*, i8*)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 (%struct.TYPE_7__*, i8*, i8*)* null, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i32, i32* @nbpaths, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i8*, i8** %13, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i8*, i8** %13, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %12, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %13, align 8
  br label %23

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %19, %3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %52, align 8
  store i32 (%struct.TYPE_7__*, i8*, i8*)* %53, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %10, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 (%struct.TYPE_7__*, i8*, i8*)* null, i32 (%struct.TYPE_7__*, i8*, i8*)** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %48, %43, %40
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = call i32* @defaultEntityLoader(i8* %68, i8* %69, %struct.TYPE_7__* %70)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %114

74:                                               ; preds = %67
  %75 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %76 = icmp ne i32 (%struct.TYPE_7__*, i8*, i8*)* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 (%struct.TYPE_7__*, i8*, i8*)* %78, i32 (%struct.TYPE_7__*, i8*, i8*)** %82, align 8
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32* %87, i32** %91, align 8
  br label %92

92:                                               ; preds = %86, %83
  %93 = load i64, i64* @load_trace, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load i32, i32* @stderr, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** %5, align 8
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %101 ]
  %104 = load i8*, i8** %6, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  br label %109

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i8* [ %107, %106 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %108 ]
  %111 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %103, i8* %110)
  br label %112

112:                                              ; preds = %109, %92
  %113 = load i32*, i32** %8, align 8
  store i32* %113, i32** %4, align 8
  br label %220

114:                                              ; preds = %67
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %181, %114
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @nbpaths, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %184

119:                                              ; preds = %115
  %120 = load i64*, i64** @paths, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = call i8* @xmlStrdup(i8* %125)
  store i8* %126, i8** %14, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = call i8* @xmlStrcat(i8* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %128, i8** %14, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = call i8* @xmlStrcat(i8* %129, i8* %130)
  store i8* %131, i8** %14, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %180

134:                                              ; preds = %119
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = call i32* @defaultEntityLoader(i8* %135, i8* %136, %struct.TYPE_7__* %137)
  store i32* %138, i32** %8, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %177

141:                                              ; preds = %134
  %142 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %143 = icmp ne i32 (%struct.TYPE_7__*, i8*, i8*)* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 (%struct.TYPE_7__*, i8*, i8*)* %145, i32 (%struct.TYPE_7__*, i8*, i8*)** %149, align 8
  br label %150

150:                                              ; preds = %144, %141
  %151 = load i32*, i32** %10, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32*, i32** %10, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store i32* %154, i32** %158, align 8
  br label %159

159:                                              ; preds = %153, %150
  %160 = load i64, i64* @load_trace, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i32, i32* @stderr, align 4
  %164 = load i8*, i8** %14, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i8*, i8** %6, align 8
  br label %170

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %167
  %171 = phi i8* [ %168, %167 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %169 ]
  %172 = call i32 @fprintf(i32 %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %164, i8* %171)
  br label %173

173:                                              ; preds = %170, %159
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @xmlFree(i8* %174)
  %176 = load i32*, i32** %8, align 8
  store i32* %176, i32** %4, align 8
  br label %220

177:                                              ; preds = %134
  %178 = load i8*, i8** %14, align 8
  %179 = call i32 @xmlFree(i8* %178)
  br label %180

180:                                              ; preds = %177, %119
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %115

184:                                              ; preds = %115
  %185 = load i32*, i32** %10, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i32*, i32** %10, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i32* %188, i32** %192, align 8
  br label %193

193:                                              ; preds = %187, %184
  %194 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %195 = icmp ne i32 (%struct.TYPE_7__*, i8*, i8*)* %194, null
  br i1 %195, label %196, label %219

196:                                              ; preds = %193
  %197 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store i32 (%struct.TYPE_7__*, i8*, i8*)* %197, i32 (%struct.TYPE_7__*, i8*, i8*)** %201, align 8
  %202 = load i8*, i8** %5, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %207 = load i8*, i8** %5, align 8
  %208 = call i32 %205(%struct.TYPE_7__* %206, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %207)
  br label %218

209:                                              ; preds = %196
  %210 = load i8*, i8** %6, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %9, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = call i32 %213(%struct.TYPE_7__* %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %212, %209
  br label %218

218:                                              ; preds = %217, %204
  br label %219

219:                                              ; preds = %218, %193
  store i32* null, i32** %4, align 8
  br label %220

220:                                              ; preds = %219, %173, %112
  %221 = load i32*, i32** %4, align 8
  ret i32* %221
}

declare dso_local i32* @defaultEntityLoader(i8*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @xmlStrdup(i8*) #1

declare dso_local i8* @xmlStrcat(i8*, i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
