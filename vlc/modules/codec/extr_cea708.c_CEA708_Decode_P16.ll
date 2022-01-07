; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_Decode_P16.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_Decode_P16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CEA708_STATUS_OK = common dso_local global i32 0, align 4
@__const.CEA708_Decode_P16.out = private unnamed_addr constant [4 x i8] c"?\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_4__*)* @CEA708_Decode_P16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CEA708_Decode_P16(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca [4 x i8], align 1
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @CEA708_STATUS_OK, align 4
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.CEA708_Decode_P16.out, i32 0, i32 0), i64 4, i1 false)
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 127
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  br label %55

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 2047
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 6
  %29 = or i32 192, %28
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 63
  %34 = or i32 128, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  br label %54

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 12
  %40 = or i32 224, %39
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 6
  %45 = and i32 %44, 63
  %46 = or i32 128, %45
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 63
  %51 = or i32 128, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 %52, i8* %53, align 1
  br label %54

54:                                               ; preds = %37, %26
  br label %55

55:                                               ; preds = %54, %19
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @CEA708_Window_Write(i8* %56, %struct.TYPE_5__* %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @CEA708_STATUS_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %55, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CEA708_Window_Write(i8*, %struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
