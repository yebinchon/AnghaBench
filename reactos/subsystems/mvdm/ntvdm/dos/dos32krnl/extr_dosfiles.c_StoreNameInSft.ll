; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_StoreNameInSft.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_StoreNameInSft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @StoreNameInSft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StoreNameInSft(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = mul nuw i64 4, %11
  %16 = trunc i64 %15 to i32
  %17 = call i32 @GetShortPathNameA(i32 %14, i32* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = mul nuw i64 4, %11
  %22 = sub i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = call i32 @strncpy(i32* %13, i32 %20, i32 %23)
  %25 = call i32 @_strupr(i32* %13)
  br label %26

26:                                               ; preds = %19, %2
  %27 = call i32* @strrchr(i32* %13, i8 signext 92)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* %13, i32** %8, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @strchr(i32* %32, i8 signext 46)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  store i32 0, i32* %37, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @strlen(i32* %44)
  %46 = call i32 @min(i32 %45, i32 8)
  %47 = call i32 @RtlCopyMemory(i32* %42, i32* %43, i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %39
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @strlen(i32* %56)
  %58 = call i32 @min(i32 %57, i32 3)
  %59 = call i32 @RtlCopyMemory(i32* %54, i32* %55, i32 %58)
  br label %60

60:                                               ; preds = %50, %39
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetShortPathNameA(i32, i32*, i32) #2

declare dso_local i32 @strncpy(i32*, i32, i32) #2

declare dso_local i32 @_strupr(i32*) #2

declare dso_local i32* @strrchr(i32*, i8 signext) #2

declare dso_local i32* @strchr(i32*, i8 signext) #2

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @strlen(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
