; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_demux.c_demux_NewAdvanced.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_demux.c_demux_NewAdvanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.vlc_demux_private = type { i32* }

@demux_DestroyDemux = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"demux\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"creating demux \22%s\22, URL: %s, path: %s\00", align 1
@demux_Probe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @demux_NewAdvanced(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vlc_demux_private*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @demux_DestroyDemux, align 4
  %24 = call %struct.TYPE_8__* @vlc_stream_CustomNew(i32* %22, i32 %23, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %17, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %205

31:                                               ; preds = %7
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %37 = call %struct.vlc_demux_private* @vlc_stream_Private(%struct.TYPE_8__* %36)
  store %struct.vlc_demux_private* %37, %struct.vlc_demux_private** %16, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41, %31
  %47 = load i32*, i32** %13, align 8
  %48 = call i8* @stream_MimeType(i32* %47)
  store i8* %48, i8** %18, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %18, align 8
  %53 = call i8* @demux_NameFromMimeType(i8* %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %10, align 8
  %62 = call i32* @input_GetItem(i32* %61)
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32* [ %62, %60 ], [ null, %63 ]
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 10
  store i32* %65, i32** %67, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i8* @strdup(i8* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %198

80:                                               ; preds = %64
  %81 = load i8*, i8** %12, align 8
  %82 = call i8* @strdup(i8* %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 9
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 9
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %198

94:                                               ; preds = %80
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 9
  %97 = load i32*, i32** %96, align 8
  %98 = call i8* @strstr(i32* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %98, i8** %19, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i8*, i8** %19, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  br label %105

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %101
  %106 = phi i8* [ %103, %101 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %104 ]
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @get_path(i8* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %105
  %118 = load i32*, i32** %9, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @msg_Dbg(i32* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %119, i8* %120, i8* %123)
  br label %125

125:                                              ; preds = %117, %105
  %126 = load i32*, i32** %13, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 8
  store i32* %126, i32** %128, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 7
  store i32* %129, i32** %131, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  store i32* null, i32** %136, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  store i32* null, i32** %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  store i32* null, i32** %140, align 8
  store i8* null, i8** %20, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %125
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %146
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @strrchr(i8* %154, i8 signext 46)
  store i8* %155, i8** %21, align 8
  %156 = load i8*, i8** %21, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load i8*, i8** %21, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i32, i32* %15, align 4
  %162 = call i8* @DemuxNameFromExtension(i8* %160, i32 %161)
  store i8* %162, i8** %20, align 8
  br label %163

163:                                              ; preds = %158, %151
  br label %164

164:                                              ; preds = %163, %146, %125
  %165 = load i8*, i8** %20, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %20, align 8
  br label %171

171:                                              ; preds = %167, %164
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %173 = load i8*, i8** %20, align 8
  %174 = load i8*, i8** %20, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @strcmp(i8* %174, i8* %177)
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* @demux_Probe, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %184 = call i32* @vlc_module_load(%struct.TYPE_8__* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %173, i32 %181, i32 %182, %struct.TYPE_8__* %183)
  %185 = load %struct.vlc_demux_private*, %struct.vlc_demux_private** %16, align 8
  %186 = getelementptr inbounds %struct.vlc_demux_private, %struct.vlc_demux_private* %185, i32 0, i32 0
  store i32* %184, i32** %186, align 8
  %187 = load %struct.vlc_demux_private*, %struct.vlc_demux_private** %16, align 8
  %188 = getelementptr inbounds %struct.vlc_demux_private, %struct.vlc_demux_private* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %171
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @free(i8* %194)
  br label %198

196:                                              ; preds = %171
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %197, %struct.TYPE_8__** %8, align 8
  br label %205

198:                                              ; preds = %191, %93, %79
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @free(i8* %201)
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %204 = call i32 @stream_CommonDelete(%struct.TYPE_8__* %203)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %205

205:                                              ; preds = %198, %196, %30
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %206
}

declare dso_local %struct.TYPE_8__* @vlc_stream_CustomNew(i32*, i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.vlc_demux_private* @vlc_stream_Private(%struct.TYPE_8__*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @stream_MimeType(i32*) #1

declare dso_local i8* @demux_NameFromMimeType(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @input_GetItem(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i32*, i8*) #1

declare dso_local i8* @get_path(i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @DemuxNameFromExtension(i8*, i32) #1

declare dso_local i32* @vlc_module_load(%struct.TYPE_8__*, i8*, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @stream_CommonDelete(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
