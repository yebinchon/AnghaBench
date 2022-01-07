; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_keys.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64*, i32 }

@MP4_Box_data_keys_t = common dso_local global i32 0, align 4
@MP4_FreeBox_keys = common dso_local global i32 0, align 4
@i_read = common dso_local global i32 0, align 4
@p_peek = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @MP4_ReadBox_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_keys(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load i32, i32* @MP4_Box_data_keys_t, align 4
  %10 = load i32, i32* @MP4_FreeBox_keys, align 4
  %11 = call i32 @MP4_READBOX_ENTER(i32 %9, i32 %10)
  %12 = load i32, i32* @i_read, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MP4_GET4BYTES(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MP4_GET4BYTES(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_9__* @calloc(i32 %26, i32 16)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %23
  %41 = call i32 @MP4_READBOX_EXIT(i32 0)
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %144, %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %147

53:                                               ; preds = %49
  %54 = load i32, i32* @i_read, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %147

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @MP4_GET4BYTES(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 4
  %65 = load i32, i32* @i_read, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57
  br label %147

68:                                               ; preds = %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @MP4_GETFOURCC(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 8
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i64* @malloc(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i64* %85, i64** %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %68
  br label %147

109:                                              ; preds = %68
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* @p_peek, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @memcpy(i64* %120, i32 %121, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @p_peek, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* @p_peek, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @i_read, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* @i_read, align 4
  br label %144

144:                                              ; preds = %109
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %49

147:                                              ; preds = %108, %67, %56, %49
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i32 %152, i32* %157, align 8
  br label %158

158:                                              ; preds = %151, %147
  %159 = call i32 @MP4_READBOX_EXIT(i32 1)
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @MP4_READBOX_ENTER(i32, i32) #1

declare dso_local i32 @MP4_READBOX_EXIT(i32) #1

declare dso_local i32 @MP4_GET4BYTES(i32) #1

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @MP4_GETFOURCC(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
