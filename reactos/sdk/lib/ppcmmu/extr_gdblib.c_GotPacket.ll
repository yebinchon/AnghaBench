; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_gdblib.c_GotPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_gdblib.c_GotPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Continue = common dso_local global i32 0, align 4
@DataInBuffer = common dso_local global i32* null, align 8
@DataInAddr = common dso_local global i32 0, align 4
@GDB_SAVE_SIZE = common dso_local global i32 0, align 4
@RegisterSaveArea = common dso_local global %struct.TYPE_2__* null, align 8
@Signal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GotPacket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* @Continue, align 4
  %4 = load i32*, i32** @DataInBuffer, align 8
  %5 = load i32, i32* @DataInAddr, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @DataInAddr, align 4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %114 [
    i32 103, label %10
    i32 71, label %30
    i32 109, label %48
    i32 77, label %69
    i32 63, label %91
    i32 99, label %94
    i32 83, label %96
    i32 115, label %98
    i32 113, label %105
  ]

10:                                               ; preds = %0
  %11 = call i32 (...) @PacketStart()
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %25, %10
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @GDB_SAVE_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RegisterSaveArea, align 8
  %18 = bitcast %struct.TYPE_2__* %17 to i32*
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = call i32 @PacketWriteHexNumber(i8 signext %23, i32 8)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %12

28:                                               ; preds = %12
  %29 = call i32 (...) @PacketFinish()
  br label %116

30:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = call i8* @PacketReadHexNumber(i32 8)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RegisterSaveArea, align 8
  %39 = bitcast %struct.TYPE_2__* %38 to i32*
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %31

46:                                               ; preds = %31
  %47 = call i32 (...) @PacketOk()
  br label %116

48:                                               ; preds = %0
  %49 = call i8* @PacketReadHexNumber(i32 8)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* @DataInAddr, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @DataInAddr, align 4
  %53 = call i8* @PacketReadHexNumber(i32 8)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %3, align 4
  %55 = call i32 (...) @PacketStart()
  br label %56

56:                                               ; preds = %60, %48
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %3, align 4
  %59 = icmp sgt i32 %57, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  %63 = sext i32 %61 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @PacketWriteHexNumber(i8 signext %65, i32 2)
  br label %56

67:                                               ; preds = %56
  %68 = call i32 (...) @PacketFinish()
  br label %116

69:                                               ; preds = %0
  %70 = call i8* @PacketReadHexNumber(i32 8)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* @DataInAddr, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @DataInAddr, align 4
  %74 = call i8* @PacketReadHexNumber(i32 8)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @DataInAddr, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @DataInAddr, align 4
  br label %78

78:                                               ; preds = %82, %69
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %3, align 4
  %81 = icmp sgt i32 %79, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = call i8* @PacketReadHexNumber(i32 2)
  %84 = ptrtoint i8* %83 to i8
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  %87 = sext i32 %85 to i64
  %88 = inttoptr i64 %87 to i8*
  store i8 %84, i8* %88, align 1
  br label %78

89:                                               ; preds = %78
  %90 = call i32 (...) @PacketOk()
  br label %116

91:                                               ; preds = %0
  %92 = load i32, i32* @Signal, align 4
  %93 = call i32 @PacketWriteSignal(i32 %92)
  br label %116

94:                                               ; preds = %0
  %95 = call i32 (...) @PacketOk()
  store i32 1, i32* @Continue, align 4
  br label %116

96:                                               ; preds = %0
  %97 = call i32 (...) @PacketOk()
  store i32 0, i32* @Continue, align 4
  br label %116

98:                                               ; preds = %0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RegisterSaveArea, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, 1024
  store i32 %102, i32* %100, align 4
  %103 = call i32 (...) @PacketOk()
  store i32 1, i32* @Continue, align 4
  %104 = call i32 (...) @marker()
  br label %116

105:                                              ; preds = %0
  %106 = load i32*, i32** @DataInBuffer, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %113 [
    i32 83, label %109
    i32 79, label %111
  ]

109:                                              ; preds = %105
  %110 = call i32 (...) @PacketEmpty()
  br label %113

111:                                              ; preds = %105
  %112 = call i32 (...) @PacketEmpty()
  br label %113

113:                                              ; preds = %105, %111, %109
  br label %116

114:                                              ; preds = %0
  %115 = call i32 (...) @PacketEmpty()
  br label %116

116:                                              ; preds = %114, %113, %98, %96, %94, %91, %89, %67, %46, %28
  ret void
}

declare dso_local i32 @PacketStart(...) #1

declare dso_local i32 @PacketWriteHexNumber(i8 signext, i32) #1

declare dso_local i32 @PacketFinish(...) #1

declare dso_local i8* @PacketReadHexNumber(i32) #1

declare dso_local i32 @PacketOk(...) #1

declare dso_local i32 @PacketWriteSignal(i32) #1

declare dso_local i32 @marker(...) #1

declare dso_local i32 @PacketEmpty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
