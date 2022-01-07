; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_DecodeODCommand.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_DecodeODCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Decode tag 0x%x length %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DecodeODCommand(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  br label %11

11:                                               ; preds = %43, %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = call i32 @ODGetBytes(i32* %7, i32** %8, i32 1)
  store i32 %15, i32* %9, align 4
  %16 = call i32 @ODDescriptorLength(i32* %7, i32** %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %14
  br label %51

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @od_debug(i32* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %42 [
    i32 128, label %30
    i32 129, label %36
  ]

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @ObjectDescrUpdateCommandRead(i32* %31, i32* %32, i32 %33, i32* %34)
  br label %43

36:                                               ; preds = %24
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @ObjectDescrRemoveCommandRead(i32* %37, i32* %38, i32 %39, i32* %40)
  br label %43

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %36, %30
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %11

51:                                               ; preds = %23, %11
  ret void
}

declare dso_local i32 @ODGetBytes(i32*, i32**, i32) #1

declare dso_local i32 @ODDescriptorLength(i32*, i32**) #1

declare dso_local i32 @od_debug(i32*, i8*, i32, i32) #1

declare dso_local i32 @ObjectDescrUpdateCommandRead(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ObjectDescrRemoveCommandRead(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
