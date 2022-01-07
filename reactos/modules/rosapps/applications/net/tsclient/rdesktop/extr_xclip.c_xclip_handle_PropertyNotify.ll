; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xclip.c_xclip_handle_PropertyNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xclip.c_xclip_handle_PropertyNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32*, i32, i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }

@PropertyNewValue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"x_clip_handle_PropertyNotify: This->xclip.waiting_for_INCR != 0\0A\00", align 1
@False = common dso_local global i32 0, align 4
@AnyPropertyType = common dso_local global i32 0, align 4
@Success = common dso_local global i64 0, align 8
@PropertyChangeMask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xclip_handle_PropertyNotify(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 1, i64* %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PropertyNewValue, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %164

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %164

23:                                               ; preds = %17
  %24 = call i32 @DEBUG_CLIPBOARD(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %151, %23
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %152

28:                                               ; preds = %25
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @False, align 4
  %41 = load i32, i32* @AnyPropertyType, align 4
  %42 = call i64 @XGetWindowProperty(i32 %31, i32 %34, i32 %38, i64 %39, i64 4096, i32 %40, i32 %41, i32* %11, i32* %8, i64* %5, i64* %7, i32** %10)
  %43 = load i64, i64* @Success, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @XFree(i32* %46)
  br label %185

48:                                               ; preds = %28
  %49 = load i64, i64* %5, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %112

51:                                               ; preds = %48
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @XGetWindowAttributes(i32 %54, i32 %57, %struct.TYPE_12__* %9)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PropertyChangeMask, align 4
  %68 = xor i32 %66, %67
  %69 = call i32 @XSelectInput(i32 %61, i32 %64, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @XFree(i32* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %51
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @xclip_send_data_with_convert(%struct.TYPE_14__* %81, i32* %85, i64 %89, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %80
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = call i32 @helper_cliprdr_send_empty_response(%struct.TYPE_14__* %97)
  br label %99

99:                                               ; preds = %96, %80
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @xfree(i32* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %99, %51
  br label %151

112:                                              ; preds = %48
  %113 = load i64, i64* %5, align 8
  %114 = udiv i64 %113, 4
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %6, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = add i64 %124, %125
  %127 = call i32* @xrealloc(i32* %120, i64 %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 3
  store i32* %127, i32** %130, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32*, i32** %10, align 8
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @memcpy(i32* %139, i32* %140, i64 %141)
  %143 = load i64, i64* %5, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, %143
  store i64 %148, i64* %146, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @XFree(i32* %149)
  br label %151

151:                                              ; preds = %112, %111
  br label %25

152:                                              ; preds = %25
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @XDeleteProperty(i32 %155, i32 %158, i32 %162)
  br label %185

164:                                              ; preds = %17, %2
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %167, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %164
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @DefaultRootWindow(i32 %179)
  %181 = icmp eq i64 %176, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %184 = call i32 @xclip_probe_selections(%struct.TYPE_14__* %183)
  br label %185

185:                                              ; preds = %45, %152, %182, %173, %164
  ret void
}

declare dso_local i32 @DEBUG_CLIPBOARD(i8*) #1

declare dso_local i64 @XGetWindowProperty(i32, i32, i32, i64, i64, i32, i32, i32*, i32*, i64*, i64*, i32**) #1

declare dso_local i32 @XFree(i32*) #1

declare dso_local i32 @XGetWindowAttributes(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @XSelectInput(i32, i32, i32) #1

declare dso_local i32 @xclip_send_data_with_convert(%struct.TYPE_14__*, i32*, i64, i32) #1

declare dso_local i32 @helper_cliprdr_send_empty_response(%struct.TYPE_14__*) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32* @xrealloc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @XDeleteProperty(i32, i32, i32) #1

declare dso_local i64 @DefaultRootWindow(i32) #1

declare dso_local i32 @xclip_probe_selections(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
