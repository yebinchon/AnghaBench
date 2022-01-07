; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_handle.c_DosCopyHandleTable.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_handle.c_DosCopyHandleTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 (%struct.TYPE_15__*)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@DEFAULT_JFT_SIZE = common dso_local global i64 0, align 8
@Sda = common dso_local global %struct.TYPE_17__* null, align 8
@SYSTEM_PSP = common dso_local global i64 0, align 8
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@SysVars = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Cannot create standard handle %d, the SFT is full!\0A\00", align 1
@FILE_INFO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosCopyHandleTable(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @DEFAULT_JFT_SIZE, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 255, i32* %18, align 4
  br label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** @Sda, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SYSTEM_PSP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %148

28:                                               ; preds = %22
  %29 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %30 = call i32 @GetStdHandle(i32 %29)
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %33 = call i32 @GetStdHandle(i32 %32)
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %36 = call i32 @GetStdHandle(i32 %35)
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %36, i32* %37, align 4
  store i64 0, i64* %4, align 8
  br label %38

38:                                               ; preds = %144, %28
  %39 = load i64, i64* %4, align 8
  %40 = icmp ult i64 %39, 3
  br i1 %40, label %41, label %147

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IsConsoleHandle(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SysVars, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DosFindDeviceDescriptor(i32 %50)
  store i32 %51, i32* %8, align 4
  br label %57

52:                                               ; preds = %41
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DosFindWin32Descriptor(i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 255
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.TYPE_14__* @DosGetFileDescriptor(i32 %61)
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %7, align 8
  br label %135

63:                                               ; preds = %57
  %64 = call i32 (...) @DosFindFreeDescriptor()
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 255
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @DPRINT1(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %144

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = call %struct.TYPE_14__* @DosGetFileDescriptor(i32 %71)
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %7, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = icmp ne %struct.TYPE_14__* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = call i32 @RtlZeroMemory(%struct.TYPE_14__* %77, i32 20)
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IsConsoleHandle(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %70
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SysVars, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_15__* @DosGetDriverNode(i32 %87)
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %10, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FILE_INFO_DEVICE, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SysVars, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @RtlFillMemory(i32 %103, i32 4, i8 signext 32)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @RtlCopyMemory(i32 %107, i32 %111, i32 %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %118, align 8
  %120 = icmp ne i32 (%struct.TYPE_15__*)* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %84
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %126 = call i32 %124(%struct.TYPE_15__* %125)
  br label %127

127:                                              ; preds = %121, %84
  br label %134

128:                                              ; preds = %70
  %129 = load i64, i64* %4, align 8
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %127
  br label %135

135:                                              ; preds = %134, %60
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = load i64, i64* %4, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %140, i32* %143, align 4
  br label %144

144:                                              ; preds = %135, %67
  %145 = load i64, i64* %4, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %4, align 8
  br label %38

147:                                              ; preds = %38
  br label %183

148:                                              ; preds = %22
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** @Sda, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.TYPE_13__* @SEGMENT_TO_PSP(i64 %151)
  store %struct.TYPE_13__* %152, %struct.TYPE_13__** %5, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @FAR_POINTER(i32 %155)
  %157 = inttoptr i64 %156 to i32*
  store i32* %157, i32** %6, align 8
  store i64 0, i64* %4, align 8
  br label %158

158:                                              ; preds = %179, %148
  %159 = load i64, i64* %4, align 8
  %160 = load i64, i64* @DEFAULT_JFT_SIZE, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %158
  %163 = load i32*, i32** %6, align 8
  %164 = load i64, i64* %4, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.TYPE_14__* @DosGetFileDescriptor(i32 %166)
  store %struct.TYPE_14__* %167, %struct.TYPE_14__** %7, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = load i64, i64* %4, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %3, align 8
  %173 = load i64, i64* %4, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32 %171, i32* %174, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %162
  %180 = load i64, i64* %4, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %4, align 8
  br label %158

182:                                              ; preds = %158
  br label %183

183:                                              ; preds = %182, %147
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i64 @IsConsoleHandle(i32) #1

declare dso_local i32 @DosFindDeviceDescriptor(i32) #1

declare dso_local i32 @DosFindWin32Descriptor(i32) #1

declare dso_local %struct.TYPE_14__* @DosGetFileDescriptor(i32) #1

declare dso_local i32 @DosFindFreeDescriptor(...) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_15__* @DosGetDriverNode(i32) #1

declare dso_local i32 @RtlFillMemory(i32, i32, i8 signext) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @SEGMENT_TO_PSP(i64) #1

declare dso_local i64 @FAR_POINTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
