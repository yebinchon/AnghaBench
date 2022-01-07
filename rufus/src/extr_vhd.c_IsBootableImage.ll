; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_vhd.c_IsBootableImage.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_vhd.c_IsBootableImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Disk image analysis:\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"  Could not open image '%s'\00", align 1
@img_report = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BLED_COMPRESSION_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"  Image\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"  Could not get image size: %s\00", align 1
@FILE_BEGIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"  Could not read VHD footer\00", align 1
@conectix_str = common dso_local global i32 0, align 4
@VHD_FOOTER_FILE_FORMAT_V1_0 = common dso_local global i64 0, align 8
@VHD_FOOTER_TYPE_FIXED_HARD_DISK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"  Unsupported type of VHD image\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"  Warning: VHD footer seems corrupted (checksum: %04X, expected: %04X)\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"  Image is a Fixed Hard Disk VHD file\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IsBootableImage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %12, i64* %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %11, align 8
  %14 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @GENERIC_READ, align 4
  %17 = load i32, i32* @FILE_SHARE_READ, align 4
  %18 = load i32, i32* @OPEN_EXISTING, align 4
  %19 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %20 = call i64 @CreateFileU(i8* %15, i32 %16, i32 %17, i32* null, i32 %18, i32 %19, i32* null)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %148

27:                                               ; preds = %1
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @IsCompressedBootableImage(i8* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @img_report, i32 0, i32 0), align 8
  %31 = load i64, i64* @BLED_COMPRESSION_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @FALSE, align 8
  %36 = call i64 @AnalyzeMBR(i64 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @GetFileSizeEx(i64 %38, %struct.TYPE_9__* %4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = call i32 (...) @WindowsErrorString()
  %43 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %148

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @img_report, i32 0, i32 1), align 8
  store i32 32, i32* %6, align 4
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @img_report, i32 0, i32 0), align 8
  %48 = load i64, i64* @BLED_COMPRESSION_NONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %147

50:                                               ; preds = %44
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @img_report, i32 0, i32 1), align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 512, %52
  %54 = icmp sge i32 %51, %53
  br i1 %54, label %55, label %147

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @malloc(i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %5, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @img_report, i32 0, i32 1), align 8
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %59, %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = icmp eq %struct.TYPE_8__* %63, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %55
  %66 = load i64, i64* %3, align 8
  %67 = load i32, i32* @FILE_BEGIN, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SetFilePointerEx(i64 %66, i32 %69, i32* null, i32 %67)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i64, i64* %3, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ReadFile(i64 %73, %struct.TYPE_8__* %74, i32 %75, i32* %6, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 32
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %72, %65, %55
  %83 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %148

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @conectix_str, align 4
  %89 = call i64 @memcmp(i32 %87, i32 %88, i32 4)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %146

91:                                               ; preds = %84
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @img_report, i32 0, i32 1), align 8
  %93 = sext i32 %92 to i64
  %94 = sub i64 %93, 32
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @img_report, i32 0, i32 1), align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @bswap_uint32(i64 %98)
  %100 = load i64, i64* @VHD_FOOTER_FILE_FORMAT_V1_0, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %91
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @bswap_uint32(i64 %105)
  %107 = load i64, i64* @VHD_FOOTER_TYPE_FIXED_HARD_DISK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102, %91
  %110 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i64, i64* @FALSE, align 8
  store i64 %111, i64* %11, align 8
  br label %148

112:                                              ; preds = %102
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @bswap_uint32(i64 %115)
  store i64 %116, i64* %9, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %119

119:                                              ; preds = %130, %112
  %120 = load i64, i64* %7, align 8
  %121 = icmp ult i64 %120, 32
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = bitcast %struct.TYPE_8__* %123 to i64*
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %8, align 8
  br label %130

130:                                              ; preds = %122
  %131 = load i64, i64* %7, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %7, align 8
  br label %119

133:                                              ; preds = %119
  %134 = load i64, i64* %8, align 8
  %135 = xor i64 %134, -1
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* %8, align 8
  %142 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i64 %140, i64 %141)
  br label %143

143:                                              ; preds = %139, %133
  %144 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @img_report, i32 0, i32 2), align 4
  br label %146

146:                                              ; preds = %143, %84
  br label %147

147:                                              ; preds = %146, %50, %44
  br label %148

148:                                              ; preds = %147, %109, %82, %41, %24
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = call i32 @safe_free(%struct.TYPE_8__* %149)
  %151 = load i64, i64* %3, align 8
  %152 = call i32 @safe_closehandle(i64 %151)
  %153 = load i64, i64* %11, align 8
  ret i64 %153
}

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i64 @CreateFileU(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @IsCompressedBootableImage(i8*) #1

declare dso_local i64 @AnalyzeMBR(i64, i8*, i64) #1

declare dso_local i32 @GetFileSizeEx(i64, %struct.TYPE_9__*) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @SetFilePointerEx(i64, i32, i32*, i32) #1

declare dso_local i32 @ReadFile(i64, %struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @bswap_uint32(i64) #1

declare dso_local i32 @safe_free(%struct.TYPE_8__*) #1

declare dso_local i32 @safe_closehandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
