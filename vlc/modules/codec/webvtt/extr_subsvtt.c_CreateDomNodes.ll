; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_CreateDomNodes.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_CreateDomNodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32, i32*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i8*, i32*)* @CreateDomNodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @CreateDomNodes(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__** %5, %struct.TYPE_13__*** %6, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %7, align 8
  %21 = load i32*, i32** %4, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %199, %2
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %200

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @FindNextTag(i8* %27, i8** %8)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %172

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %31
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = call %struct.TYPE_11__* @webvtt_dom_text_New(%struct.TYPE_13__* %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %10, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = call i8* @strndup(i8* %44, i64 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @CountNewLines(i8* %60)
  %62 = add i32 %57, %61
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = bitcast %struct.TYPE_11__* %66 to %struct.TYPE_13__*
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store %struct.TYPE_13__** %70, %struct.TYPE_13__*** %6, align 8
  br label %71

71:                                               ; preds = %43, %38
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @IsEndTag(i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %132, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = call %struct.TYPE_12__* @webvtt_dom_tag_New(%struct.TYPE_13__* %77)
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %11, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %81, label %131

81:                                               ; preds = %76
  store i8* null, i8** %12, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i8* @SplitTag(i8* %82, i64* %13, i8** %12)
  store i8* %83, i8** %14, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i8* @strndup(i8* %84, i64 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = icmp ne i8* %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %81
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = call i8* @strndup(i8* %93, i64 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  br label %103

103:                                              ; preds = %92, %81
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @isdigit(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = call i32 @webvtt_scan_time(i32* %119, i32* %121)
  br label %123

123:                                              ; preds = %116, %108, %103
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %125 = bitcast %struct.TYPE_12__* %124 to %struct.TYPE_13__*
  %126 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %128 = bitcast %struct.TYPE_12__* %127 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %7, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store %struct.TYPE_13__** %130, %struct.TYPE_13__*** %6, align 8
  br label %131

131:                                              ; preds = %123, %76
  br label %169

132:                                              ; preds = %72
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = icmp ne %struct.TYPE_13__* %133, null
  br i1 %134, label %135, label %167

135:                                              ; preds = %132
  store i8* null, i8** %15, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = call i8* @SplitTag(i8* %136, i64* %16, i8** %15)
  store i8* %137, i8** %17, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i8* @strndup(i8* %138, i64 %139)
  store i8* %140, i8** %18, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = load i8*, i8** %18, align 8
  %143 = call %struct.TYPE_13__* @webvtt_domnode_getParentByTag(%struct.TYPE_13__* %141, i8* %142)
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %7, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = icmp ne %struct.TYPE_13__* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %135
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  store %struct.TYPE_13__** %148, %struct.TYPE_13__*** %6, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %7, align 8
  br label %155

152:                                              ; preds = %135
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  store %struct.TYPE_13__** %154, %struct.TYPE_13__*** %6, align 8
  br label %155

155:                                              ; preds = %152, %146
  br label %156

156:                                              ; preds = %160, %155
  %157 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = icmp ne %struct.TYPE_13__* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  store %struct.TYPE_13__** %163, %struct.TYPE_13__*** %6, align 8
  br label %156

164:                                              ; preds = %156
  %165 = load i8*, i8** %18, align 8
  %166 = call i32 @free(i8* %165)
  br label %168

167:                                              ; preds = %132
  br label %200

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168, %131
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  store i8* %171, i8** %3, align 8
  br label %199

172:                                              ; preds = %26
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %174 = call %struct.TYPE_11__* @webvtt_dom_text_New(%struct.TYPE_13__* %173)
  store %struct.TYPE_11__* %174, %struct.TYPE_11__** %19, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %176 = icmp ne %struct.TYPE_11__* %175, null
  br i1 %176, label %177, label %198

177:                                              ; preds = %172
  %178 = load i8*, i8** %3, align 8
  %179 = call i8* @strdup(i8* %178)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load i32*, i32** %4, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 1, i32 0
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @CountNewLines(i8* %189)
  %191 = add i32 %186, %190
  %192 = load i32*, i32** %4, align 8
  %193 = load i32, i32* %192, align 4
  %194 = add i32 %193, %191
  store i32 %194, i32* %192, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %196 = bitcast %struct.TYPE_11__* %195 to %struct.TYPE_13__*
  %197 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* %196, %struct.TYPE_13__** %197, align 8
  br label %198

198:                                              ; preds = %177, %172
  br label %200

199:                                              ; preds = %169
  br label %22

200:                                              ; preds = %198, %167, %22
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %201
}

declare dso_local i8* @FindNextTag(i8*, i8**) #1

declare dso_local %struct.TYPE_11__* @webvtt_dom_text_New(%struct.TYPE_13__*) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @CountNewLines(i8*) #1

declare dso_local i32 @IsEndTag(i8*) #1

declare dso_local %struct.TYPE_12__* @webvtt_dom_tag_New(%struct.TYPE_13__*) #1

declare dso_local i8* @SplitTag(i8*, i64*, i8**) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @webvtt_scan_time(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @webvtt_domnode_getParentByTag(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
