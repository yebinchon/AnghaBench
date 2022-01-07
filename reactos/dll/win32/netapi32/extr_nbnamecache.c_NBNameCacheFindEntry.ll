; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbnamecache.c_NBNameCacheFindEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbnamecache.c_NBNameCacheFindEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NBNameCache = type { i32 }
%struct.TYPE_3__ = type { i32* }

@NCBNAMSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NBNameCacheFindEntry(%struct.NBNameCache* %0, i8* %1) #0 {
  %3 = alloca %struct.NBNameCache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__**, align 8
  store %struct.NBNameCache* %0, %struct.NBNameCache** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @NCBNAMSZ, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* @NCBNAMSZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @NCBNAMSZ, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @memcpy(i8* %14, i8* %15, i32 %17)
  %19 = load i32, i32* @NCBNAMSZ, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %14, i64 %21
  store i8 0, i8* %22, align 1
  %23 = load %struct.NBNameCache*, %struct.NBNameCache** %3, align 8
  %24 = icmp ne %struct.NBNameCache* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load %struct.NBNameCache*, %struct.NBNameCache** %3, align 8
  %27 = getelementptr inbounds %struct.NBNameCache, %struct.NBNameCache* %26, i32 0, i32 0
  %28 = call i32 @EnterCriticalSection(i32* %27)
  %29 = load %struct.NBNameCache*, %struct.NBNameCache** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call %struct.TYPE_3__** @NBNameCacheWalk(%struct.NBNameCache* %29, i8* %30)
  store %struct.TYPE_3__** %31, %struct.TYPE_3__*** %8, align 8
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %33 = icmp ne %struct.TYPE_3__** %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %8, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %5, align 8
  br label %40

39:                                               ; preds = %25
  store i32* null, i32** %5, align 8
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.NBNameCache*, %struct.NBNameCache** %3, align 8
  %42 = getelementptr inbounds %struct.NBNameCache, %struct.NBNameCache* %41, i32 0, i32 0
  %43 = call i32 @LeaveCriticalSection(i32* %42)
  br label %45

44:                                               ; preds = %2
  store i32* null, i32** %5, align 8
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @EnterCriticalSection(i32*) #2

declare dso_local %struct.TYPE_3__** @NBNameCacheWalk(%struct.NBNameCache*, i8*) #2

declare dso_local i32 @LeaveCriticalSection(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
