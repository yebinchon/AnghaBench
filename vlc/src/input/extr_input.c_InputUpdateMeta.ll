; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputUpdateMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputUpdateMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32**, i32* }
%struct.TYPE_3__ = type { i32 }

@DEMUX_GET_META = common dso_local global i32 0, align 4
@DEMUX_GET_ATTACHMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @InputUpdateMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InputUpdateMeta(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = call i32* (...) @vlc_meta_New()
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %139

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @DEMUX_GET_META, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to i32***
  %22 = call i32 (i32*, i32, i32***, ...) @demux_Control(i32* %18, i32 %19, i32*** %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @DEMUX_GET_ATTACHMENTS, align 4
  %25 = call i32 (i32*, i32, i32***, ...) @demux_Control(i32* %23, i32 %24, i32*** %6, i32* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %130, label %27

27:                                               ; preds = %17
  %28 = load i32*, i32** %3, align 8
  %29 = call %struct.TYPE_4__* @input_priv(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @vlc_mutex_lock(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call %struct.TYPE_4__* @input_priv(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %110

39:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %102, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call %struct.TYPE_4__* @input_priv(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %40
  %48 = load i32*, i32** %3, align 8
  %49 = call %struct.TYPE_4__* @input_priv(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load i32*, i32** %3, align 8
  %60 = call %struct.TYPE_4__* @input_priv(i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vlc_input_attachment_Delete(i32 %66)
  br label %101

68:                                               ; preds = %47
  %69 = load i32*, i32** %3, align 8
  %70 = call %struct.TYPE_4__* @input_priv(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = call %struct.TYPE_4__* @input_priv(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %76, i32* %83, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = call %struct.TYPE_4__* @input_priv(i32* %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = call %struct.TYPE_4__* @input_priv(i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* %91, i32** %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %68, %58
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %40

105:                                              ; preds = %40
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = call %struct.TYPE_4__* @input_priv(i32* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %27
  %111 = load i32*, i32** %3, align 8
  %112 = call %struct.TYPE_4__* @input_priv(i32* %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %3, align 8
  %115 = call %struct.TYPE_4__* @input_priv(i32* %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i32*, i32** %3, align 8
  %118 = call %struct.TYPE_4__* @input_priv(i32* %117)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* %7, align 4
  %121 = load i32**, i32*** %6, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @AppendAttachment(i32* %113, i32** %116, i32*** %119, i32 %120, i32** %121, i32* %122)
  %124 = load i32*, i32** %3, align 8
  %125 = call %struct.TYPE_4__* @input_priv(i32* %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = call i32 @vlc_mutex_unlock(i32* %128)
  br label %130

130:                                              ; preds = %110, %17
  %131 = load i32*, i32** %3, align 8
  %132 = call %struct.TYPE_4__* @input_priv(i32* %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @es_out_ControlSetMeta(i32 %134, i32* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @vlc_meta_Delete(i32* %137)
  br label %139

139:                                              ; preds = %130, %16
  ret void
}

declare dso_local i32* @vlc_meta_New(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @demux_Control(i32*, i32, i32***, ...) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @input_priv(i32*) #1

declare dso_local i32 @vlc_input_attachment_Delete(i32) #1

declare dso_local i32 @AppendAttachment(i32*, i32**, i32***, i32, i32**, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @es_out_ControlSetMeta(i32, i32*) #1

declare dso_local i32 @vlc_meta_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
