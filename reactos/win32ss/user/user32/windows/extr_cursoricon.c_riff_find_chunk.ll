; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_cursoricon.c_riff_find_chunk.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_cursoricon.c_riff_find_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@ANI_LIST_ID = common dso_local global i64 0, align 8
@ANI_RIFF_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__*)* @riff_find_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riff_find_chunk(i64 %0, i64 %1, %struct.TYPE_4__* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 16
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  store i8* %22, i8** %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ANI_LIST_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @ANI_RIFF_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %4
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -8
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %90, %33
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %102

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %41, %38
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to i64*
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %56, %41
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 8
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = bitcast i8* %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = and i64 %69, -2
  %71 = trunc i64 %70 to i32
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %75, i8** %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @ANI_LIST_ID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %63
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @ANI_RIFF_ID, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %63
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 8
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %102

90:                                               ; preds = %56, %50, %47
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 8
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = bitcast i8* %93 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  %97 = and i64 %96, -2
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  store i8* %101, i8** %9, align 8
  br label %34

102:                                              ; preds = %86, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
