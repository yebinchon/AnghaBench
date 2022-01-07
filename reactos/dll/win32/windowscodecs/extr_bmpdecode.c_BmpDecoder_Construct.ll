; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_bmpdecode.c_BmpDecoder_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_bmpdecode.c_BmpDecoder_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%s,%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8**)* @BmpDecoder_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BmpDecoder_Construct(i32 %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @debugstr_guid(i32 %12)
  %14 = load i8**, i8*** %9, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i8** %14)
  %16 = load i8**, i8*** %9, align 8
  store i8* null, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @BmpDecoder_Create(i32 %17, i32 %18, %struct.TYPE_3__** %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = load i8**, i8*** %9, align 8
  %30 = call i32 @IWICBitmapDecoder_QueryInterface(i32* %27, i32 %28, i8** %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @IWICBitmapDecoder_Release(i32* %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %23
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @TRACE(i8*, i32, i8**) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i32 @BmpDecoder_Create(i32, i32, %struct.TYPE_3__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IWICBitmapDecoder_QueryInterface(i32*, i32, i8**) #1

declare dso_local i32 @IWICBitmapDecoder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
