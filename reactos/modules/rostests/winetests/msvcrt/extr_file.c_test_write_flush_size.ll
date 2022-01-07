; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_write_flush_size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_write_flush_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"0,1,2,3,4,5,6,7,8,9\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"_cnt should be 0 after rewind, but is %d\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"_cnt should be 0 after fflush, but is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"read failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"missing flush by %d byte write\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"unexpected flush by %d byte write\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"unexpected flush by %d/2 byte double write\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"fseek failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"fgetpos failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"fread failed\0A\00", align 1
@_IOREAD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"file->_flag = %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"file->_cnt = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"file->_ptr == file->_base\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"fwrite failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"pos = %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @test_write_flush_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_write_flush_size(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @fileno(%struct.TYPE_10__* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i8* @calloc(i32 1, i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i8* @calloc(i32 1, i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @_snprintf(i8* %19, i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %93, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp sge i32 %26, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = call i32 @rewind(%struct.TYPE_10__* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = call i32 @fwrite(i8* %42, i32 1, i32 %43, %struct.TYPE_10__* %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @lseek(i32 %46, i32 1, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = call i32 @fflush(%struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i32 @fseek(%struct.TYPE_10__* %60, i32 0, i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = call i32 @fread(i8* %63, i32 1, i32 %64, %struct.TYPE_10__* %65)
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %30
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i64 @memcmp(i8* %75, i8* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %92

83:                                               ; preds = %30
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @memcmp(i8* %84, i8* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %83, %74
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %7, align 4
  br label %25

96:                                               ; preds = %25
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = call i32 @rewind(%struct.TYPE_10__* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sdiv i32 %100, 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = call i32 @fwrite(i8* %99, i32 1, i32 %101, %struct.TYPE_10__* %102)
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sdiv i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i32, i32* %4, align 4
  %110 = sdiv i32 %109, 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = call i32 @fwrite(i8* %108, i32 1, i32 %110, %struct.TYPE_10__* %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @SEEK_SET, align 4
  %115 = call i32 @lseek(i32 %113, i32 1, i32 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = call i32 @fflush(%struct.TYPE_10__* %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = load i32, i32* @SEEK_SET, align 4
  %120 = call i32 @fseek(%struct.TYPE_10__* %118, i32 0, i32 %119)
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = call i32 @fread(i8* %121, i32 1, i32 %122, %struct.TYPE_10__* %123)
  %125 = load i32, i32* %4, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i8*, i8** %6, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @memcmp(i8* %129, i8* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %4, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %138 = load i32, i32* @SEEK_END, align 4
  %139 = call i32 @fseek(%struct.TYPE_10__* %137, i32 -1, i32 %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = call i32 @fgetpos(%struct.TYPE_10__* %144, i64* %9)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %150 = load i8*, i8** %5, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = call i32 @fread(i8* %150, i32 1, i32 1, %struct.TYPE_10__* %151)
  %153 = icmp eq i32 %152, 1
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @_IOREAD, align 4
  %160 = and i32 %158, %159
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64 %173)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %177, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %184 = load i8*, i8** %6, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %187 = call i32 @fwrite(i8* %184, i32 1, i32 %185, %struct.TYPE_10__* %186)
  %188 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @_IOREAD, align 4
  %193 = and i32 %191, %192
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64 %206)
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %210, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %218 = call i32 @fgetpos(%struct.TYPE_10__* %217, i64* %10)
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %223 = load i64, i64* %9, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = add nsw i64 %226, 1
  %228 = load i64, i64* %10, align 8
  %229 = icmp eq i64 %227, %228
  %230 = zext i1 %229 to i32
  %231 = load i64, i64* %9, align 8
  %232 = trunc i64 %231 to i32
  %233 = load i64, i64* %10, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %232, i32 %234)
  %236 = load i8*, i8** %5, align 8
  %237 = call i32 @free(i8* %236)
  %238 = load i8*, i8** %6, align 8
  %239 = call i32 @free(i8* %238)
  ret void
}

declare dso_local i32 @fileno(%struct.TYPE_10__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @_snprintf(i8*, i32, i8*) #1

declare dso_local i32 @rewind(%struct.TYPE_10__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @fflush(%struct.TYPE_10__*) #1

declare dso_local i32 @fseek(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fgetpos(%struct.TYPE_10__*, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
