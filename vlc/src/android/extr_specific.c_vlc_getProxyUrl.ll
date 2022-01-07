; ModuleID = '/home/carl/AnghaBench/vlc/src/android/extr_specific.c_vlc_getProxyUrl.c'
source_filename = "/home/carl/AnghaBench/vlc/src/android/extr_specific.c_vlc_getProxyUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i8* (%struct.TYPE_24__**, i32*, i32)*, i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*, i8*)*, i32* (%struct.TYPE_24__**, i32, i32, i32*)*, i32 (%struct.TYPE_24__**)*, i64 (%struct.TYPE_24__**)*, i32* (%struct.TYPE_24__**, i8*)* }

@.str = private unnamed_addr constant [15 x i8] c"http.proxyHost\00", align 1
@fields = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"http.proxyPort\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"http://%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_getProxyUrl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_24__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @VLC_UNUSED(i8* %12)
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = call %struct.TYPE_24__** @get_env(i32* %5)
  store %struct.TYPE_24__** %14, %struct.TYPE_24__*** %4, align 8
  %15 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %16 = icmp eq %struct.TYPE_24__** %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %223

18:                                               ; preds = %1
  %19 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 6
  %22 = load i32* (%struct.TYPE_24__**, i8*)*, i32* (%struct.TYPE_24__**, i8*)** %21, align 8
  %23 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %24 = call i32* %22(%struct.TYPE_24__** %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 5
  %28 = load i64 (%struct.TYPE_24__**)*, i64 (%struct.TYPE_24__**)** %27, align 8
  %29 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %30 = call i64 %28(%struct.TYPE_24__** %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %18
  %33 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 4
  %36 = load i32 (%struct.TYPE_24__**)*, i32 (%struct.TYPE_24__**)** %35, align 8
  %37 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %38 = call i32 %36(%struct.TYPE_24__** %37)
  store i32* null, i32** %11, align 8
  br label %39

39:                                               ; preds = %32, %18
  %40 = load i32*, i32** %11, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %173

43:                                               ; preds = %39
  %44 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 3
  %47 = load i32* (%struct.TYPE_24__**, i32, i32, i32*)*, i32* (%struct.TYPE_24__**, i32, i32, i32*)** %46, align 8
  %48 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fields, i32 0, i32 0, i32 1), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fields, i32 0, i32 0, i32 0), align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32* %47(%struct.TYPE_24__** %48, i32 %49, i32 %50, i32* %51)
  store i32* %52, i32** %9, align 8
  %53 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %55, align 8
  %57 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 %56(%struct.TYPE_24__** %57, i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  br label %173

63:                                               ; preds = %43
  %64 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i8* (%struct.TYPE_24__**, i32*, i32)*, i8* (%struct.TYPE_24__**, i32*, i32)** %66, align 8
  %68 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i8* %67(%struct.TYPE_24__** %68, i32* %69, i32 0)
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %63
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %63
  br label %173

80:                                               ; preds = %73
  %81 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 6
  %84 = load i32* (%struct.TYPE_24__**, i8*)*, i32* (%struct.TYPE_24__**, i8*)** %83, align 8
  %85 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %86 = call i32* %84(%struct.TYPE_24__** %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* %86, i32** %11, align 8
  %87 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 5
  %90 = load i64 (%struct.TYPE_24__**)*, i64 (%struct.TYPE_24__**)** %89, align 8
  %91 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %92 = call i64 %90(%struct.TYPE_24__** %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %80
  %95 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 4
  %98 = load i32 (%struct.TYPE_24__**)*, i32 (%struct.TYPE_24__**)** %97, align 8
  %99 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %100 = call i32 %98(%struct.TYPE_24__** %99)
  store i32* null, i32** %11, align 8
  br label %101

101:                                              ; preds = %94, %80
  %102 = load i32*, i32** %11, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %173

105:                                              ; preds = %101
  %106 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 3
  %109 = load i32* (%struct.TYPE_24__**, i32, i32, i32*)*, i32* (%struct.TYPE_24__**, i32, i32, i32*)** %108, align 8
  %110 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fields, i32 0, i32 0, i32 1), align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fields, i32 0, i32 0, i32 0), align 4
  %113 = load i32*, i32** %11, align 8
  %114 = call i32* %109(%struct.TYPE_24__** %110, i32 %111, i32 %112, i32* %113)
  store i32* %114, i32** %10, align 8
  %115 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %117, align 8
  %119 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 %118(%struct.TYPE_24__** %119, i32* %120)
  %122 = load i32*, i32** %10, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %156

124:                                              ; preds = %105
  %125 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = load i8* (%struct.TYPE_24__**, i32*, i32)*, i8* (%struct.TYPE_24__**, i32*, i32)** %127, align 8
  %129 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i8* %128(%struct.TYPE_24__** %129, i32* %130, i32 0)
  store i8* %131, i8** %8, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %155

134:                                              ; preds = %124
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 48
  br i1 %145, label %146, label %155

146:                                              ; preds = %140, %134
  %147 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 2
  %150 = load i32 (%struct.TYPE_24__**, i32*, i8*)*, i32 (%struct.TYPE_24__**, i32*, i8*)** %149, align 8
  %151 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = call i32 %150(%struct.TYPE_24__** %151, i32* %152, i8* %153)
  store i8* null, i8** %8, align 8
  br label %155

155:                                              ; preds = %146, %140, %124
  br label %156

156:                                              ; preds = %155, %105
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = icmp ne i8* %158, null
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %162 = load i8*, i8** %8, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i8*, i8** %8, align 8
  br label %167

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i8* [ %165, %164 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %166 ]
  %169 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %157, i8* %161, i8* %168)
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i8* null, i8** %6, align 8
  br label %172

172:                                              ; preds = %171, %167
  br label %173

173:                                              ; preds = %172, %104, %79, %62, %42
  %174 = load i8*, i8** %7, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 2
  %180 = load i32 (%struct.TYPE_24__**, i32*, i8*)*, i32 (%struct.TYPE_24__**, i32*, i8*)** %179, align 8
  %181 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = call i32 %180(%struct.TYPE_24__** %181, i32* %182, i8* %183)
  br label %185

185:                                              ; preds = %176, %173
  %186 = load i32*, i32** %9, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 1
  %192 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %191, align 8
  %193 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = call i32 %192(%struct.TYPE_24__** %193, i32* %194)
  br label %196

196:                                              ; preds = %188, %185
  %197 = load i8*, i8** %8, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 2
  %203 = load i32 (%struct.TYPE_24__**, i32*, i8*)*, i32 (%struct.TYPE_24__**, i32*, i8*)** %202, align 8
  %204 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = call i32 %203(%struct.TYPE_24__** %204, i32* %205, i8* %206)
  br label %208

208:                                              ; preds = %199, %196
  %209 = load i32*, i32** %10, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 1
  %215 = load i32 (%struct.TYPE_24__**, i32*)*, i32 (%struct.TYPE_24__**, i32*)** %214, align 8
  %216 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = call i32 %215(%struct.TYPE_24__** %216, i32* %217)
  br label %219

219:                                              ; preds = %211, %208
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @release_env(i32 %220)
  %222 = load i8*, i8** %6, align 8
  store i8* %222, i8** %2, align 8
  br label %223

223:                                              ; preds = %219, %17
  %224 = load i8*, i8** %2, align 8
  ret i8* %224
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local %struct.TYPE_24__** @get_env(i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @release_env(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
