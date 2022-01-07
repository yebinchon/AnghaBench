; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xclip.c_xclip_handle_SelectionRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xclip.c_xclip_handle_SelectionRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i32, i64, i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_12__, i32*, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [69 x i8] c"xclip_handle_SelectionRequest: selection=%s, target=%s, property=%s\0A\00", align 1
@XA_ATOM = common dso_local global i64 0, align 8
@XA_INTEGER = common dso_local global i64 0, align 8
@XA_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [115 x i8] c"Error: Another clipboard request was already sent to the RDP server and not yet responded. Refusing this request.\0A\00", align 1
@True = common dso_local global i64 0, align 8
@Success = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Requested native format but didn't specifiy which.\0A\00", align 1
@CF_TEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [115 x i8] c"Requested target unavailable due to lack of Unicode support. (It was not in TARGETS, so why did you ask for it?!)\0A\00", align 1
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [84 x i8] c"Requested target unavailable. (It was not in TARGETS, so why did you ask for it?!)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xclip_handle_SelectionRequest(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @XGetAtomName(i32 %13, i64 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @XGetAtomName(i32 %20, i64 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @XGetAtomName(i32 %27, i64 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DEBUG_CLIPBOARD(i8* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = load i64, i64* @XA_ATOM, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 13
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @xclip_provide_selection(%struct.TYPE_13__* %44, %struct.TYPE_12__* %45, i64 %46, i32 32, i32* %49, i32 %53)
  br label %207

55:                                               ; preds = %2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = load i64, i64* @XA_INTEGER, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 12
  %71 = call i32 @xclip_provide_selection(%struct.TYPE_13__* %65, %struct.TYPE_12__* %66, i64 %67, i32 32, i32* %70, i32 1)
  br label %207

72:                                               ; preds = %55
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = load i64, i64* @XA_STRING, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 11
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @xclip_provide_selection(%struct.TYPE_13__* %82, %struct.TYPE_12__* %83, i64 %84, i32 8, i32* %88, i32 %92)
  br label %205

94:                                               ; preds = %72
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = call i32 @DEBUG_CLIPBOARD(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = call i32 @xclip_refuse_selection(%struct.TYPE_13__* %102, %struct.TYPE_12__* %103)
  br label %207

105:                                              ; preds = %94
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %108, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %105
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @True, align 8
  %125 = load i64, i64* @XA_INTEGER, align 8
  %126 = call i32 @XGetWindowProperty(i32 %117, i32 %120, i64 %123, i32 0, i32 1, i64 %124, i64 %125, i32* %10, i32* %8, i64* %5, i64* %6, i8** %7)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @Success, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %114
  %131 = call i32 @DEBUG_CLIPBOARD(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = call i32 @xclip_refuse_selection(%struct.TYPE_13__* %132, %struct.TYPE_12__* %133)
  br label %207

135:                                              ; preds = %114
  %136 = load i8*, i8** %7, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %8, align 4
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @XFree(i8* %139)
  br label %191

141:                                              ; preds = %105
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %144, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %141
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @XA_STRING, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %150, %141
  %157 = load i32, i32* @CF_TEXT, align 4
  store i32 %157, i32* %8, align 4
  br label %190

158:                                              ; preds = %150
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %161, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %158
  %168 = call i32 @DEBUG_CLIPBOARD(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.3, i64 0, i64 0))
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = call i32 @xclip_refuse_selection(%struct.TYPE_13__* %169, %struct.TYPE_12__* %170)
  br label %207

172:                                              ; preds = %158
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 8
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %175, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %172
  %182 = load i32, i32* @CF_UNICODETEXT, align 4
  store i32 %182, i32* %8, align 4
  br label %188

183:                                              ; preds = %172
  %184 = call i32 @DEBUG_CLIPBOARD(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0))
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %187 = call i32 @xclip_refuse_selection(%struct.TYPE_13__* %185, %struct.TYPE_12__* %186)
  br label %207

188:                                              ; preds = %181
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %156
  br label %191

191:                                              ; preds = %190, %135
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @cliprdr_send_data_request(%struct.TYPE_13__* %192, i32 %193)
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 10
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %199 = bitcast %struct.TYPE_12__* %197 to i8*
  %200 = bitcast %struct.TYPE_12__* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 32, i1 false)
  %201 = load i64, i64* @True, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 9
  store i64 %201, i64* %204, align 8
  br label %207

205:                                              ; preds = %81
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %43, %64, %100, %130, %167, %183, %191, %206
  ret void
}

declare dso_local i32 @DEBUG_CLIPBOARD(i8*) #1

declare dso_local i32 @XGetAtomName(i32, i64) #1

declare dso_local i32 @xclip_provide_selection(%struct.TYPE_13__*, %struct.TYPE_12__*, i64, i32, i32*, i32) #1

declare dso_local i32 @xclip_refuse_selection(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @XGetWindowProperty(i32, i32, i64, i32, i32, i64, i64, i32*, i32*, i64*, i64*, i8**) #1

declare dso_local i32 @XFree(i8*) #1

declare dso_local i32 @cliprdr_send_data_request(%struct.TYPE_13__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
