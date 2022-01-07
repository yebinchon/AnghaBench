; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Open.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_OPEN_SHAREABLE = common dso_local global i32 0, align 4
@MCIERR_MUST_USE_SHAREABLE = common dso_local global i32 0, align 4
@MCI_OPEN_ELEMENT = common dso_local global i32 0, align 4
@MCI_OPEN_ELEMENT_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"MCI_OPEN_ELEMENT_ID %p! Abort\0A\00", align 1
@MCIERR_FLAGS_NOT_COMPATIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"MCI_OPEN_ELEMENT element name: %s\0A\00", align 1
@MCIERR_INVALID_FILE = common dso_local global i32 0, align 4
@DRIVE_CDROM = common dso_local global i64 0, align 8
@MCIERR_CANNOT_LOAD_DRIVER = common dso_local global i32 0, align 4
@MCI_FORMAT_MSF = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_5__*)* @MCICDA_Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_Open(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca [7 x i8], align 1
  %12 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @mciGetDriverData(i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  store i8 0, i8* %12, align 1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, %struct.TYPE_5__* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %23, i32* %4, align 4
  br label %192

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %28, i32* %4, align 4
  br label %192

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MCI_OPEN_SHAREABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %54

52:                                               ; preds = %42, %37
  %53 = load i32, i32* @MCIERR_MUST_USE_SHAREABLE, align 4
  store i32 %53, i32* %4, align 4
  br label %192

54:                                               ; preds = %47
  br label %63

55:                                               ; preds = %29
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MCI_OPEN_SHAREABLE, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %54
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MCI_OPEN_ELEMENT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MCI_OPEN_ELEMENT_ID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %76)
  %78 = load i32, i32* @MCIERR_FLAGS_NOT_COMPATIBLE, align 4
  store i32 %78, i32* %9, align 4
  br label %186

79:                                               ; preds = %68
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @debugstr_w(i32* %82)
  %84 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @isalpha(i32 %89) #3
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* @MCIERR_INVALID_FILE, align 4
  store i32 %93, i32* %9, align 4
  br label %186

94:                                               ; preds = %79
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call signext i8 @toupper(i32 %99)
  store i8 %100, i8* %12, align 1
  %101 = load i8, i8* %12, align 1
  %102 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  store i8 %101, i8* %102, align 1
  %103 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 1
  store i8 58, i8* %103, align 1
  %104 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 2
  store i8 92, i8* %104, align 1
  %105 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 3
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %107 = call i64 @GetDriveTypeW(i8* %106)
  %108 = load i64, i64* @DRIVE_CDROM, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %94
  %111 = load i32, i32* @MCIERR_INVALID_FILE, align 4
  store i32 %111, i32* %9, align 4
  br label %186

112:                                              ; preds = %94
  br label %142

113:                                              ; preds = %63
  %114 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  store i8 65, i8* %114, align 1
  %115 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 1
  store i8 58, i8* %115, align 1
  %116 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 2
  store i8 92, i8* %116, align 1
  %117 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 3
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %132, %113
  %119 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sle i32 %121, 90
  br i1 %122, label %123, label %136

123:                                              ; preds = %118
  %124 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %125 = call i64 @GetDriveTypeW(i8* %124)
  %126 = load i64, i64* @DRIVE_CDROM, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %130 = load i8, i8* %129, align 1
  store i8 %130, i8* %12, align 1
  br label %136

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131
  %133 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = add i8 %134, 1
  store i8 %135, i8* %133, align 1
  br label %118

136:                                              ; preds = %128, %118
  %137 = load i8, i8* %12, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* @MCIERR_CANNOT_LOAD_DRIVER, align 4
  store i32 %140, i32* %9, align 4
  br label %186

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141, %112
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @MCI_FORMAT_MSF, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 1
  store i8 92, i8* %149, align 1
  %150 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  store i8 92, i8* %150, align 1
  %151 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 2
  store i8 46, i8* %151, align 1
  %152 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 3
  store i8 92, i8* %152, align 1
  %153 = load i8, i8* %12, align 1
  %154 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 4
  store i8 %153, i8* %154, align 1
  %155 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 5
  store i8 58, i8* %155, align 1
  %156 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 6
  store i8 0, i8* %156, align 1
  %157 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %158 = load i32, i32* @GENERIC_READ, align 4
  %159 = load i32, i32* @FILE_SHARE_READ, align 4
  %160 = load i32, i32* @OPEN_EXISTING, align 4
  %161 = call i64 @CreateFileW(i8* %157, i32 %158, i32 %159, i32* null, i32 %160, i32 0, i32 0)
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %142
  %170 = load i32, i32* @MCIERR_MUST_USE_SHAREABLE, align 4
  store i32 %170, i32* %9, align 4
  br label %186

171:                                              ; preds = %142
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @MCI_NOTIFY, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @LOWORD(i32 %179)
  %181 = call i32 @HWND_32(i32 %180)
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %184 = call i32 @mciDriverNotify(i32 %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %176, %171
  store i32 0, i32* %4, align 4
  br label %192

186:                                              ; preds = %169, %139, %110, %92, %73
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %188, align 8
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %186, %185, %52, %27, %22
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i64 @mciGetDriverData(i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @WARN(i8*, i32*) #1

declare dso_local i32 @debugstr_w(i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #2

declare dso_local signext i8 @toupper(i32) #1

declare dso_local i64 @GetDriveTypeW(i8*) #1

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mciDriverNotify(i32, i32, i32) #1

declare dso_local i32 @HWND_32(i32) #1

declare dso_local i32 @LOWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
