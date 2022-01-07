; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_reload_sni.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_reload_sni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_sni = type { i8*, i8*, i8*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.swaybar_pixmap** }
%struct.swaybar_pixmap = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaybar_sni*, i8*, i32)* @reload_sni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reload_sni(%struct.swaybar_sni* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.swaybar_sni*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.swaybar_pixmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.swaybar_pixmap*, align 8
  %15 = alloca i32, align 4
  store %struct.swaybar_sni* %0, %struct.swaybar_sni** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %17 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 78
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %25 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %29 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i8* [ %26, %23 ], [ %30, %27 ]
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %103

35:                                               ; preds = %31
  %36 = call %struct.TYPE_9__* (...) @create_list()
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %39 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %38, i32 0, i32 9
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @list_cat(%struct.TYPE_9__* %37, i32 %42)
  %44 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %45 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %51 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @list_add(%struct.TYPE_9__* %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %35
  %55 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %56 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %55, i32 0, i32 9
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %65 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %64, i32 0, i32 7
  %66 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %67 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %66, i32 0, i32 6
  %68 = call i8* @find_icon(i32 %59, %struct.TYPE_9__* %60, i8* %61, i32 %62, i8* %63, i32* %65, i32* %67)
  store i8* %68, i8** %9, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = call i32 @list_free(%struct.TYPE_9__* %69)
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %54
  %74 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %75 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %81 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %84 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %83, i32 0, i32 7
  %85 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %86 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %85, i32 0, i32 6
  %87 = call i8* @find_icon_in_dir(i8* %79, i64 %82, i32* %84, i32* %86)
  store i8* %87, i8** %9, align 8
  br label %88

88:                                               ; preds = %78, %73, %54
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %93 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @cairo_surface_destroy(i32 %94)
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @load_background_image(i8* %96)
  %98 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %99 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @free(i8* %100)
  br label %179

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %31
  %104 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %105 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 78
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %113 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %112, i32 0, i32 5
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  br label %119

115:                                              ; preds = %103
  %116 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %117 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %116, i32 0, i32 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi %struct.TYPE_9__* [ %114, %111 ], [ %118, %115 ]
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %10, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = icmp ne %struct.TYPE_9__* %121, null
  br i1 %122, label %123, label %179

123:                                              ; preds = %119
  store %struct.swaybar_pixmap* null, %struct.swaybar_pixmap** %11, align 8
  %124 = load i32, i32* @INT_MAX, align 4
  store i32 %124, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %153, %123
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %125
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load %struct.swaybar_pixmap**, %struct.swaybar_pixmap*** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %134, i64 %136
  %138 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %137, align 8
  store %struct.swaybar_pixmap* %138, %struct.swaybar_pixmap** %14, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %14, align 8
  %142 = getelementptr inbounds %struct.swaybar_pixmap, %struct.swaybar_pixmap* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  %145 = call i32 @abs(i64 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %131
  %150 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %14, align 8
  store %struct.swaybar_pixmap* %150, %struct.swaybar_pixmap** %11, align 8
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %149, %131
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %125

156:                                              ; preds = %125
  %157 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %158 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @cairo_surface_destroy(i32 %159)
  %161 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %11, align 8
  %162 = getelementptr inbounds %struct.swaybar_pixmap, %struct.swaybar_pixmap* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %165 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %11, align 8
  %166 = getelementptr inbounds %struct.swaybar_pixmap, %struct.swaybar_pixmap* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %11, align 8
  %169 = getelementptr inbounds %struct.swaybar_pixmap, %struct.swaybar_pixmap* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %172 = load %struct.swaybar_pixmap*, %struct.swaybar_pixmap** %11, align 8
  %173 = getelementptr inbounds %struct.swaybar_pixmap, %struct.swaybar_pixmap* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @cairo_format_stride_for_width(i32 %171, i64 %174)
  %176 = call i32 @cairo_image_surface_create_for_data(i32 %163, i32 %164, i64 %167, i64 %170, i32 %175)
  %177 = load %struct.swaybar_sni*, %struct.swaybar_sni** %4, align 8
  %178 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %91, %156, %119
  ret void
}

declare dso_local %struct.TYPE_9__* @create_list(...) #1

declare dso_local i32 @list_cat(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @list_add(%struct.TYPE_9__*, i64) #1

declare dso_local i8* @find_icon(i32, %struct.TYPE_9__*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @list_free(%struct.TYPE_9__*) #1

declare dso_local i8* @find_icon_in_dir(i8*, i64, i32*, i32*) #1

declare dso_local i32 @cairo_surface_destroy(i32) #1

declare dso_local i32 @load_background_image(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @cairo_image_surface_create_for_data(i32, i32, i64, i64, i32) #1

declare dso_local i32 @cairo_format_stride_for_width(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
