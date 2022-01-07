; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_winblit.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_winblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@gapp = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@xdpy = common dso_local global i32 0, align 4
@xgc = common dso_local global i32 0, align 4
@xbgcolor = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@justcopied = common dso_local global i32 0, align 4
@xwin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @winblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @winblit(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 6), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %162

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 7), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 6), align 8
  %20 = call i32 @fz_pixmap_width(i32 %18, i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 7), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 6), align 8
  %23 = call i32 @fz_pixmap_height(i32 %21, i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 7), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 6), align 8
  %26 = call i32 @fz_pixmap_components(i32 %24, i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 7), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 6), align 8
  %29 = call i8* @fz_pixmap_samples(i32 %27, i64 %28)
  store i8* %29, i8** %6, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 0), align 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 1), align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 0), align 8
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 1), align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %17
  %43 = load i32, i32* @xdpy, align 4
  %44 = load i32, i32* @xgc, align 4
  %45 = load i32, i32* @xdpy, align 4
  %46 = load i32, i32* @xdpy, align 4
  %47 = call i32 @DefaultScreen(i32 %46)
  %48 = call i32 @BlackPixel(i32 %45, i32 %47)
  %49 = call i32 @XSetForeground(i32 %43, i32 %44, i32 %48)
  br label %55

50:                                               ; preds = %17
  %51 = load i32, i32* @xdpy, align 4
  %52 = load i32, i32* @xgc, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xbgcolor, i32 0, i32 0), align 4
  %54 = call i32 @XSetForeground(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %42
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 2), align 8
  %58 = call i32 @fillrect(i32 0, i32 0, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 3), align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 2), align 8
  %64 = call i32 @fillrect(i32 %59, i32 0, i32 %62, i32 %63)
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 3), align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @fillrect(i32 0, i32 0, i32 %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 3), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 2), align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @fillrect(i32 0, i32 %68, i32 %69, i32 %72)
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 5), align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %55
  %77 = load i32, i32* @justcopied, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %55
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 4), align 8
  %81 = call i32 @pdfapp_invert(%struct.TYPE_10__* @gapp, i32 %80)
  store i32 1, i32* @justcopied, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = call i32 @pdfapp_inverthit(%struct.TYPE_10__* @gapp)
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32, i32* @xwin, align 4
  %88 = load i32, i32* @xgc, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %5, align 4
  %96 = mul nsw i32 %94, %95
  %97 = call i32 @ximage_blit(i32 %87, i32 %88, i32 %89, i32 %90, i8* %91, i32 0, i32 0, i32 %92, i32 %93, i32 %96)
  br label %151

98:                                               ; preds = %82
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %150

101:                                              ; preds = %98
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %105, 4
  %107 = call i8* @malloc(i32 %106)
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %149

110:                                              ; preds = %101
  %111 = load i8*, i8** %6, align 8
  store i8* %111, i8** %13, align 8
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %14, align 8
  br label %113

113:                                              ; preds = %133, %110
  %114 = load i32, i32* %11, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %113
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %13, align 8
  %119 = load i8, i8* %117, align 1
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %121, align 1
  %122 = load i8*, i8** %14, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  store i8 %119, i8* %123, align 1
  %124 = load i8*, i8** %14, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  store i8 %119, i8* %125, align 1
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %13, align 8
  %128 = load i8, i8* %126, align 1
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8 %128, i8* %130, align 1
  %131 = load i8*, i8** %14, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 4
  store i8* %132, i8** %14, align 8
  br label %133

133:                                              ; preds = %116
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %11, align 4
  br label %113

136:                                              ; preds = %113
  %137 = load i32, i32* @xwin, align 4
  %138 = load i32, i32* @xgc, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i8*, i8** %12, align 8
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %3, align 4
  %145 = mul nsw i32 %144, 4
  %146 = call i32 @ximage_blit(i32 %137, i32 %138, i32 %139, i32 %140, i8* %141, i32 0, i32 0, i32 %142, i32 %143, i32 %145)
  %147 = load i8*, i8** %12, align 8
  %148 = call i32 @free(i8* %147)
  br label %149

149:                                              ; preds = %136, %101
  br label %150

150:                                              ; preds = %149, %98
  br label %151

151:                                              ; preds = %150, %86
  %152 = call i32 @pdfapp_inverthit(%struct.TYPE_10__* @gapp)
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 5), align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* @justcopied, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155, %151
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 4), align 8
  %160 = call i32 @pdfapp_invert(%struct.TYPE_10__* @gapp, i32 %159)
  store i32 1, i32* @justcopied, align 4
  br label %161

161:                                              ; preds = %158, %155
  br label %170

162:                                              ; preds = %1
  %163 = load i32, i32* @xdpy, align 4
  %164 = load i32, i32* @xgc, align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xbgcolor, i32 0, i32 0), align 4
  %166 = call i32 @XSetForeground(i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 3), align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gapp, i32 0, i32 2), align 8
  %169 = call i32 @fillrect(i32 0, i32 0, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %162, %161
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %172 = call i32 @winblitstatusbar(%struct.TYPE_8__* %171)
  ret void
}

declare dso_local i32 @fz_pixmap_width(i32, i64) #1

declare dso_local i32 @fz_pixmap_height(i32, i64) #1

declare dso_local i32 @fz_pixmap_components(i32, i64) #1

declare dso_local i8* @fz_pixmap_samples(i32, i64) #1

declare dso_local i32 @XSetForeground(i32, i32, i32) #1

declare dso_local i32 @BlackPixel(i32, i32) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @fillrect(i32, i32, i32, i32) #1

declare dso_local i32 @pdfapp_invert(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pdfapp_inverthit(%struct.TYPE_10__*) #1

declare dso_local i32 @ximage_blit(i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @winblitstatusbar(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
