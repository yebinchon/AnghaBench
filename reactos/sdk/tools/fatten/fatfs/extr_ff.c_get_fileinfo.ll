; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_get_fileinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_get_fileinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32*, i64 }
%struct.TYPE_5__ = type { i8*, i8, i8*, i32, i8*, i8*, i32 }

@RDDEM = common dso_local global i8 0, align 1
@DDEM = common dso_local global i64 0, align 8
@DIR_Attr = common dso_local global i64 0, align 8
@DIR_FileSize = common dso_local global i32 0, align 4
@DIR_WrtDate = common dso_local global i32 0, align 4
@DIR_WrtTime = common dso_local global i32 0, align 4
@DIR_NTres = common dso_local global i64 0, align 8
@NS_BODY = common dso_local global i8 0, align 1
@NS_EXT = common dso_local global i8 0, align 1
@_DF1S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @get_fileinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_fileinfo(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %49, %33, %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 11
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %7, align 1
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %20

34:                                               ; preds = %23
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @RDDEM, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* @DDEM, align 8
  %42 = trunc i64 %41 to i8
  store i8 %42, i8* %7, align 1
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 46, i8* %47, align 1
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i8, i8* %7, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 %50, i8* %51, align 1
  br label %20

53:                                               ; preds = %20
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* @DIR_Attr, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i8 %57, i8* %59, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* @DIR_FileSize, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i32 @LD_DWORD(i8* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* @DIR_WrtDate, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i8* @LD_WORD(i8* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* @DIR_WrtTime, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i8* @LD_WORD(i8* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %53, %2
  %82 = load i8*, i8** %6, align 8
  store i8 0, i8* %82, align 1
  ret void
}

declare dso_local i32 @LD_DWORD(i8*) #1

declare dso_local i8* @LD_WORD(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
