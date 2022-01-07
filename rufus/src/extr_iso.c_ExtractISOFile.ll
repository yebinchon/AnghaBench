; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_ExtractISOFile.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_ExtractISOFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64*, %struct.TYPE_5__, i64* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@UDF_BLOCKSIZE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"  Could not create file %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not locate UDF root directory\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not locate file %s in ISO image\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error reading UDF file %s\00", align 1
@WRITE_RETRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"  Error writing file %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Unable to open image '%s'\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Could not get ISO-9660 file information for file %s\00", align 1
@ISO_BLOCKSIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"  Error reading ISO9660 file %s at LSN %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ExtractISOFile(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %14, align 8
  %26 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %23, align 8
  %30 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %30, i64* %25, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @GENERIC_READ, align 4
  %33 = load i32, i32* @GENERIC_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FILE_SHARE_READ, align 4
  %36 = load i32, i32* @CREATE_ALWAYS, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @CreateFileU(i8* %31, i32 %34, i32 %35, i32* null, i32 %36, i64 %37, i32* null)
  store i64 %38, i64* %25, align 8
  %39 = load i64, i64* %25, align 8
  %40 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %4
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 (...) @WindowsErrorString()
  %45 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %43, i64 %44)
  br label %188

46:                                               ; preds = %4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32* @udf_open(i8* %47)
  store i32* %48, i32** %20, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %106

52:                                               ; preds = %46
  %53 = load i32*, i32** %20, align 8
  %54 = call i32* @udf_get_root(i32* %53, i32 1, i32 0)
  store i32* %54, i32** %21, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %188

59:                                               ; preds = %52
  %60 = load i32*, i32** %21, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32* @udf_fopen(i32* %60, i8* %61)
  store i32* %62, i32** %22, align 8
  %63 = load i32*, i32** %22, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %188

68:                                               ; preds = %59
  %69 = load i32*, i32** %22, align 8
  %70 = call i64 @udf_get_file_length(i32* %69)
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %98, %68
  %72 = load i64, i64* %12, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %71
  %75 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 @memset(i8* %29, i32 0, i64 %76)
  %78 = load i32*, i32** %22, align 8
  %79 = call i64 @udf_read_block(i32* %78, i8* %29, i32 1)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %188

85:                                               ; preds = %74
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i64 @MIN(i64 %86, i64 %87)
  store i64 %88, i64* %17, align 8
  %89 = load i64, i64* %25, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i32, i32* @WRITE_RETRIES, align 4
  %92 = call i32 @WriteFileWithRetry(i64 %89, i8* %29, i64 %90, i64* %18, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %85
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 (...) @WindowsErrorString()
  %97 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %95, i64 %96)
  br label %188

98:                                               ; preds = %85
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %14, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %14, align 8
  br label %71

105:                                              ; preds = %71
  br label %188

106:                                              ; preds = %51
  %107 = load i8*, i8** %5, align 8
  %108 = call i32* @iso9660_open(i8* %107)
  store i32* %108, i32** %19, align 8
  %109 = load i32*, i32** %19, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  br label %188

114:                                              ; preds = %106
  %115 = load i32*, i32** %19, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call %struct.TYPE_6__* @iso9660_ifs_stat_translate(i32* %115, i8* %116)
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %23, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %119 = icmp eq %struct.TYPE_6__* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  br label %188

123:                                              ; preds = %114
  store i64 0, i64* %10, align 8
  br label %124

124:                                              ; preds = %184, %123
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %130, label %187

130:                                              ; preds = %124
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %137

137:                                              ; preds = %180, %130
  %138 = load i64, i64* %13, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %183

140:                                              ; preds = %137
  %141 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %142 = call i32 @memset(i8* %29, i32 0, i64 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = add nsw i64 %148, %149
  store i64 %150, i64* %24, align 8
  %151 = load i32*, i32** %19, align 8
  %152 = load i64, i64* %24, align 8
  %153 = call i64 @iso9660_iso_seek_read(i32* %151, i8* %29, i64 %152, i32 1)
  %154 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %140
  %157 = load i8*, i8** %6, align 8
  %158 = load i64, i64* %24, align 8
  %159 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %157, i64 %158)
  br label %188

160:                                              ; preds = %140
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %163 = call i64 @MIN(i64 %161, i64 %162)
  store i64 %163, i64* %17, align 8
  %164 = load i64, i64* %25, align 8
  %165 = load i64, i64* %17, align 8
  %166 = load i32, i32* @WRITE_RETRIES, align 4
  %167 = call i32 @WriteFileWithRetry(i64 %164, i8* %29, i64 %165, i64* %18, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %160
  %170 = load i8*, i8** %7, align 8
  %171 = call i64 (...) @WindowsErrorString()
  %172 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %170, i64 %171)
  br label %188

173:                                              ; preds = %160
  %174 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %175 = load i64, i64* %13, align 8
  %176 = sub nsw i64 %175, %174
  store i64 %176, i64* %13, align 8
  %177 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %178 = load i64, i64* %14, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %14, align 8
  br label %180

180:                                              ; preds = %173
  %181 = load i64, i64* %9, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %9, align 8
  br label %137

183:                                              ; preds = %137
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %10, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %10, align 8
  br label %124

187:                                              ; preds = %124
  br label %188

188:                                              ; preds = %187, %169, %156, %120, %111, %105, %94, %82, %65, %57, %42
  %189 = load i64, i64* %25, align 8
  %190 = call i32 @safe_closehandle(i64 %189)
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %192 = icmp ne %struct.TYPE_6__* %191, null
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = call i32 @safe_free(%struct.TYPE_6__* %197)
  br label %199

199:                                              ; preds = %193, %188
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %201 = call i32 @safe_free(%struct.TYPE_6__* %200)
  %202 = load i32*, i32** %21, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32*, i32** %21, align 8
  %206 = call i32 @udf_dirent_free(i32* %205)
  br label %207

207:                                              ; preds = %204, %199
  %208 = load i32*, i32** %22, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32*, i32** %22, align 8
  %212 = call i32 @udf_dirent_free(i32* %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i32*, i32** %19, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32*, i32** %19, align 8
  %218 = call i32 @iso9660_close(i32* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32*, i32** %20, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32*, i32** %20, align 8
  %224 = call i32 @udf_close(i32* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i64, i64* %14, align 8
  %227 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %227)
  ret i64 %226
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateFileU(i8*, i32, i32, i32*, i32, i64, i32*) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i64 @WindowsErrorString(...) #2

declare dso_local i32* @udf_open(i8*) #2

declare dso_local i32* @udf_get_root(i32*, i32, i32) #2

declare dso_local i32* @udf_fopen(i32*, i8*) #2

declare dso_local i64 @udf_get_file_length(i32*) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i64 @udf_read_block(i32*, i8*, i32) #2

declare dso_local i64 @MIN(i64, i64) #2

declare dso_local i32 @WriteFileWithRetry(i64, i8*, i64, i64*, i32) #2

declare dso_local i32* @iso9660_open(i8*) #2

declare dso_local %struct.TYPE_6__* @iso9660_ifs_stat_translate(i32*, i8*) #2

declare dso_local i64 @iso9660_iso_seek_read(i32*, i8*, i64, i32) #2

declare dso_local i32 @safe_closehandle(i64) #2

declare dso_local i32 @safe_free(%struct.TYPE_6__*) #2

declare dso_local i32 @udf_dirent_free(i32*) #2

declare dso_local i32 @iso9660_close(i32*) #2

declare dso_local i32 @udf_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
