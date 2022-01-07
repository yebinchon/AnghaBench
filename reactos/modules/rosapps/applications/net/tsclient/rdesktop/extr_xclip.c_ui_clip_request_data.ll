; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xclip.c_ui_clip_request_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xclip.c_ui_clip_request_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Request from server for format %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"ui_clip_request_data: Selection probe in progress. Cannot handle request.\0A\00", align 1
@XA_INTEGER = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4
@None = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_clip_request_data(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @DEBUG_CLIPBOARD(i8* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 13
  store i32 %11, i32* %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 12
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i32 @DEBUG_CLIPBOARD(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 @helper_cliprdr_send_empty_response(%struct.TYPE_7__* %22)
  br label %200

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32 @xclip_clear_target_props(%struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 11
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XA_INTEGER, align 4
  %44 = load i32, i32* @PropModeReplace, align 4
  %45 = bitcast i32* %4 to i8*
  %46 = call i32 @XChangeProperty(i32 %35, i32 %38, i32 %42, i32 %43, i32 32, i32 %44, i8* %45, i32 1)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CurrentTime, align 4
  %66 = call i32 @XConvertSelection(i32 %49, i32 %53, i32 %57, i32 %61, i32 %64, i32 %65)
  br label %200

67:                                               ; preds = %24
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @XGetSelectionOwner(i32 %76, i32 %80)
  store i64 %81, i64* %5, align 8
  br label %84

82:                                               ; preds = %67
  %83 = load i64, i64* @None, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %82, %73
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @XGetSelectionOwner(i32 %87, i32 %91)
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @None, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %147

96:                                               ; preds = %84
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @None, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %147

100:                                              ; preds = %96
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 8
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 7
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CurrentTime, align 4
  %126 = call i32 @XConvertSelection(i32 %109, i32 %113, i32 %117, i32 %121, i32 %124, i32 %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CurrentTime, align 4
  %146 = call i32 @XConvertSelection(i32 %129, i32 %133, i32 %137, i32 %141, i32 %144, i32 %145)
  br label %200

147:                                              ; preds = %96, %84
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* @None, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CurrentTime, align 4
  %171 = call i32 @XConvertSelection(i32 %154, i32 %158, i32 %162, i32 %166, i32 %169, i32 %170)
  br label %200

172:                                              ; preds = %147
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @None, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %197

176:                                              ; preds = %172
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CurrentTime, align 4
  %196 = call i32 @XConvertSelection(i32 %179, i32 %183, i32 %187, i32 %191, i32 %194, i32 %195)
  br label %200

197:                                              ; preds = %172
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %199 = call i32 @helper_cliprdr_send_empty_response(%struct.TYPE_7__* %198)
  br label %200

200:                                              ; preds = %197, %176, %151, %100, %32, %20
  ret void
}

declare dso_local i32 @DEBUG_CLIPBOARD(i8*) #1

declare dso_local i32 @helper_cliprdr_send_empty_response(%struct.TYPE_7__*) #1

declare dso_local i32 @xclip_clear_target_props(%struct.TYPE_7__*) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @XConvertSelection(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @XGetSelectionOwner(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
