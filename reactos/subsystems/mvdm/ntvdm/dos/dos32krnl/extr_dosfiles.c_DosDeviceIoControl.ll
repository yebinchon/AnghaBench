; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosDeviceIoControl.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dosfiles.c_DosDeviceIoControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)* }

@ERROR_INVALID_HANDLE = common dso_local global i8* null, align 8
@Sda = common dso_local global %struct.TYPE_12__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@FILE_INFO_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@UNIMPLEMENTED = common dso_local global i32 0, align 4
@DOS_DEVATTR_IOCTL = common dso_local global i32 0, align 4
@ERROR_INVALID_FUNCTION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unsupported IOCTL: 0x%02X\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosDeviceIoControl(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %19 [
    i32 4, label %13
    i32 5, label %13
    i32 8, label %13
    i32 9, label %13
  ]

13:                                               ; preds = %4, %4, %4, %4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @DosDeviceIoControlDrive(i32 %14, i32 %15, i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  br label %182

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_10__* @DosGetHandleFileDescriptor(i32 %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** @ERROR_INVALID_HANDLE, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Sda, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %182

29:                                               ; preds = %19
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FILE_INFO_DEVICE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_11__* @DosGetDriverNode(i32 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %11, align 8
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %175 [
    i32 0, label %43
    i32 1, label %49
    i32 2, label %52
    i32 3, label %84
    i32 6, label %116
    i32 7, label %151
  ]

43:                                               ; preds = %41
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @setDX(i32 %46)
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %5, align 4
  br label %182

49:                                               ; preds = %41
  %50 = load i32, i32* @UNIMPLEMENTED, align 4
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %5, align 4
  br label %182

52:                                               ; preds = %41
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = icmp eq %struct.TYPE_11__* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DOS_DEVATTR_IOCTL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %55, %52
  %63 = load i8*, i8** @ERROR_INVALID_FUNCTION, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Sda, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %5, align 4
  br label %182

67:                                               ; preds = %55
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %69, align 8
  %71 = icmp ne i32 (%struct.TYPE_11__*, i32, i32*)* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %9, align 8
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %5, align 4
  br label %182

75:                                               ; preds = %67
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 %78(%struct.TYPE_11__* %79, i32 %80, i32* %81)
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %5, align 4
  br label %182

84:                                               ; preds = %41
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = icmp eq %struct.TYPE_11__* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DOS_DEVATTR_IOCTL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %87, %84
  %95 = load i8*, i8** @ERROR_INVALID_FUNCTION, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Sda, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %5, align 4
  br label %182

99:                                               ; preds = %87
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %101, align 8
  %103 = icmp ne i32 (%struct.TYPE_11__*, i32, i32*)* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32*, i32** %9, align 8
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %5, align 4
  br label %182

107:                                              ; preds = %99
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load i32 (%struct.TYPE_11__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*)** %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 %110(%struct.TYPE_11__* %111, i32 %112, i32* %113)
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %5, align 4
  br label %182

116:                                              ; preds = %41
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = icmp ne %struct.TYPE_11__* %117, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %121, align 8
  %123 = icmp ne i32 (%struct.TYPE_11__*)* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %129 = call i32 %127(%struct.TYPE_11__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124, %119
  %132 = load i32*, i32** %9, align 8
  store i32 255, i32* %132, align 4
  br label %135

133:                                              ; preds = %124
  %134 = load i32*, i32** %9, align 8
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %133, %131
  br label %149

136:                                              ; preds = %116
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32*, i32** %9, align 8
  store i32 255, i32* %145, align 4
  br label %148

146:                                              ; preds = %136
  %147 = load i32*, i32** %9, align 8
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %144
  br label %149

149:                                              ; preds = %148, %135
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %5, align 4
  br label %182

151:                                              ; preds = %41
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %153 = icmp ne %struct.TYPE_11__* %152, null
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %156, align 8
  %158 = icmp ne i32 (%struct.TYPE_11__*)* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %164 = call i32 %162(%struct.TYPE_11__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159, %154
  %167 = load i32*, i32** %9, align 8
  store i32 255, i32* %167, align 4
  br label %170

168:                                              ; preds = %159
  %169 = load i32*, i32** %9, align 8
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %168, %166
  br label %173

171:                                              ; preds = %151
  %172 = load i32*, i32** %9, align 8
  store i32 255, i32* %172, align 4
  br label %173

173:                                              ; preds = %171, %170
  %174 = load i32, i32* @TRUE, align 4
  store i32 %174, i32* %5, align 4
  br label %182

175:                                              ; preds = %41
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @DPRINT1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Sda, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %175, %173, %149, %107, %104, %94, %75, %72, %62, %49, %43, %24, %13
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @DosDeviceIoControlDrive(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @DosGetHandleFileDescriptor(i32) #1

declare dso_local %struct.TYPE_11__* @DosGetDriverNode(i32) #1

declare dso_local i32 @setDX(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
