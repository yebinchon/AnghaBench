; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_MMIHandle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_MMIHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@MM_HIGH_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported MMI mode %02x\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"unsupported display control command %02x\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"unexpected tag in MMIHandle (0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32*, i32)* @MMIHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MMIHandle(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @APDUGetTag(i32* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %72 [
    i32 132, label %16
    i32 131, label %55
    i32 130, label %61
    i32 129, label %61
    i32 133, label %68
  ]

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @APDUGetLength(i32* %17, i32* %10)
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %46 [
    i32 128, label %24
  ]

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MM_HIGH_LEVEL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @MMIDisplayReply(%struct.TYPE_7__* %34, i32 %35)
  br label %45

37:                                               ; preds = %27, %24
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @msg_Err(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %37, %33
  br label %53

46:                                               ; preds = %21
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @msg_Err(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %45
  br label %54

54:                                               ; preds = %53, %16
  br label %78

55:                                               ; preds = %4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @MMIHandleEnq(%struct.TYPE_7__* %56, i32 %57, i32* %58, i32 %59)
  br label %78

61:                                               ; preds = %4, %4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @MMIHandleMenu(%struct.TYPE_7__* %62, i32 %63, i32 %64, i32* %65, i32 %66)
  br label %78

68:                                               ; preds = %4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @SessionSendClose(%struct.TYPE_7__* %69, i32 %70)
  br label %78

72:                                               ; preds = %4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @msg_Err(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %68, %61, %55, %54
  ret void
}

declare dso_local i32 @APDUGetTag(i32*, i32) #1

declare dso_local i32* @APDUGetLength(i32*, i32*) #1

declare dso_local i32 @MMIDisplayReply(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i32) #1

declare dso_local i32 @MMIHandleEnq(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @MMIHandleMenu(%struct.TYPE_7__*, i32, i32, i32*, i32) #1

declare dso_local i32 @SessionSendClose(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
