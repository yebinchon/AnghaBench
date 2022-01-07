; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_stat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"stat.tst\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@_S_IREAD = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"fstat failed: errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@_S_IFMT = common dso_local global i32 0, align 4
@_S_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"bad format = %06o\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"bad st_mode = %06o\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"st_dev is %d, expected 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"st_dev (%d) and st_rdev (%d) differ\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"st_nlink is %d, expected 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"st_size is %d, expected 0\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"stat failed: errno=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"stat.tst\\\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"stat returned %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"open failed with errno %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"fstat(stdin) failed: errno=%d\0A\00", align 1
@_S_IFCHR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"bad st_mode=%06o\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"st_dev is %d, expected 10\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"st_rdev is %d, expected 10\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"stdin is not a char device? st_mode=%06o\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"_dup2 failed with errno %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"fstat(pipe) failed: errno=%d\0A\00", align 1
@_S_IFIFO = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [27 x i8] c"st_dev is %d, expected %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"st_rdev is %d, expected %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"pipe failed with errno %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"stat.tst                         \00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"stat(directory) failed: errno=%d\0A\00", align 1
@_S_IFDIR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"stat.tst\\ \00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"mkdir failed with errno %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"c:\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"c:/\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"st_dev = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"st_rdev = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 4
  %5 = load i32, i32* @O_WRONLY, align 4
  %6 = load i32, i32* @O_CREAT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @O_BINARY, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @_S_IREAD, align 4
  %11 = load i32, i32* @_S_IWRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %140

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @fstat(i32 %17, %struct.stat* %4)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @_S_IFMT, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @_S_IFREG, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 511
  %38 = icmp eq i32 %37, 438
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %57, i32 %59)
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, i32, ...) @ok(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = call i32 @stat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.stat* %4)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 (i32, i8*, i32, ...) @ok(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @_S_IFMT, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @_S_IFREG, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 511
  %95 = icmp eq i32 %94, 438
  %96 = zext i1 %95 to i32
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, i32, ...) @ok(i32 %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %107, i32 %109)
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, i32, ...) @ok(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  store i32 -559038737, i32* @errno, align 4
  %125 = call i32 @stat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.stat* %4)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = icmp eq i32 %126, -1
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %3, align 4
  %130 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @errno, align 4
  %132 = load i32, i32* @ENOENT, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* @errno, align 4
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %1, align 4
  %138 = call i32 @close(i32 %137)
  %139 = call i32 @remove(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %143

140:                                              ; preds = %0
  %141 = load i32, i32* @errno, align 4
  %142 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %16
  %144 = call i64 @_dup2(i32 0, i32 10)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %196

146:                                              ; preds = %143
  %147 = call i32 @fstat(i32 10, %struct.stat* %4)
  store i32 %147, i32* %3, align 4
  %148 = load i32, i32* %3, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* @errno, align 4
  %153 = call i32 (i32, i8*, i32, ...) @ok(i32 %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %152)
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @_S_IFMT, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* @_S_IFCHR, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %190

160:                                              ; preds = %146
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @_S_IFCHR, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, i32, ...) @ok(i32 %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %167)
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 10
  %172 = zext i1 %171 to i32
  %173 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, i32, ...) @ok(i32 %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %174)
  %176 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 10
  %179 = zext i1 %178 to i32
  %180 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, i32, ...) @ok(i32 %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %181)
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 1
  %186 = zext i1 %185 to i32
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i32, i8*, i32, ...) @ok(i32 %186, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  br label %194

190:                                              ; preds = %146
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %190, %160
  %195 = call i32 @close(i32 10)
  br label %199

196:                                              ; preds = %143
  %197 = load i32, i32* @errno, align 4
  %198 = call i32 @skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %196, %194
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %201 = load i32, i32* @O_BINARY, align 4
  %202 = call i64 @_pipe(i32* %200, i32 1024, i32 %201)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %257

204:                                              ; preds = %199
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @fstat(i32 %206, %struct.stat* %4)
  store i32 %207, i32* %3, align 4
  %208 = load i32, i32* %3, align 4
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* @errno, align 4
  %213 = call i32 (i32, i8*, i32, ...) @ok(i32 %211, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %212)
  %214 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @_S_IFIFO, align 4
  %217 = icmp eq i32 %215, %216
  %218 = zext i1 %217 to i32
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i32, i8*, i32, ...) @ok(i32 %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %220)
  %222 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %223, %225
  %227 = zext i1 %226 to i32
  %228 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32, i8*, i32, ...) @ok(i32 %227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %229, i32 %231)
  %233 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %234, %236
  %238 = zext i1 %237 to i32
  %239 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, i32, ...) @ok(i32 %238, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %240, i32 %242)
  %244 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 1
  %247 = zext i1 %246 to i32
  %248 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i32, i8*, i32, ...) @ok(i32 %247, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %249)
  %251 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @close(i32 %252)
  %254 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @close(i32 %255)
  br label %260

257:                                              ; preds = %199
  %258 = load i32, i32* @errno, align 4
  %259 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %257, %204
  %261 = call i64 @mkdir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %320

263:                                              ; preds = %260
  %264 = call i32 @stat(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), %struct.stat* %4)
  store i32 %264, i32* %3, align 4
  %265 = load i32, i32* %3, align 4
  %266 = icmp ne i32 %265, 0
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = load i32, i32* @errno, align 4
  %270 = call i32 (i32, i8*, i32, ...) @ok(i32 %268, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i32 %269)
  %271 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @_S_IFMT, align 4
  %274 = and i32 %272, %273
  %275 = load i32, i32* @_S_IFDIR, align 4
  %276 = icmp eq i32 %274, %275
  %277 = zext i1 %276 to i32
  %278 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (i32, i8*, i32, ...) @ok(i32 %277, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %279)
  %281 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, 511
  %284 = icmp eq i32 %283, 511
  %285 = zext i1 %284 to i32
  %286 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (i32, i8*, i32, ...) @ok(i32 %285, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %287)
  %289 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %290, %292
  %294 = zext i1 %293 to i32
  %295 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i32, i8*, i32, ...) @ok(i32 %294, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %296, i32 %298)
  %300 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 1
  %303 = zext i1 %302 to i32
  %304 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i32, i8*, i32, ...) @ok(i32 %303, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %305)
  store i32 -559038737, i32* @errno, align 4
  %307 = call i32 @stat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), %struct.stat* %4)
  store i32 %307, i32* %3, align 4
  %308 = load i32, i32* %3, align 4
  %309 = icmp eq i32 %308, -1
  %310 = zext i1 %309 to i32
  %311 = load i32, i32* %3, align 4
  %312 = call i32 (i32, i8*, i32, ...) @ok(i32 %310, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %311)
  %313 = load i32, i32* @errno, align 4
  %314 = load i32, i32* @ENOENT, align 4
  %315 = icmp eq i32 %313, %314
  %316 = zext i1 %315 to i32
  %317 = load i32, i32* @errno, align 4
  %318 = call i32 (i32, i8*, i32, ...) @ok(i32 %316, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %317)
  %319 = call i32 @rmdir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %323

320:                                              ; preds = %260
  %321 = load i32, i32* @errno, align 4
  %322 = call i32 @skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %321)
  br label %323

323:                                              ; preds = %320, %263
  store i32 -559038737, i32* @errno, align 4
  %324 = call i32 @stat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), %struct.stat* %4)
  store i32 %324, i32* %3, align 4
  %325 = load i32, i32* %3, align 4
  %326 = icmp eq i32 %325, -1
  %327 = zext i1 %326 to i32
  %328 = load i32, i32* %3, align 4
  %329 = call i32 (i32, i8*, i32, ...) @ok(i32 %327, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* @errno, align 4
  %331 = load i32, i32* @ENOENT, align 4
  %332 = icmp eq i32 %330, %331
  %333 = zext i1 %332 to i32
  %334 = load i32, i32* @errno, align 4
  %335 = call i32 (i32, i8*, i32, ...) @ok(i32 %333, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %334)
  %336 = call i32 @stat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), %struct.stat* %4)
  store i32 %336, i32* %3, align 4
  %337 = load i32, i32* %3, align 4
  %338 = icmp ne i32 %337, 0
  %339 = xor i1 %338, true
  %340 = zext i1 %339 to i32
  %341 = load i32, i32* %3, align 4
  %342 = call i32 (i32, i8*, i32, ...) @ok(i32 %340, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %341)
  %343 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i32
  %347 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 (i32, i8*, i32, ...) @ok(i32 %346, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %348)
  %350 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i32
  %354 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = call i32 (i32, i8*, i32, ...) @ok(i32 %353, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 %355)
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i64 @_dup2(i32, i32) #1

declare dso_local i64 @_pipe(i32*, i32, i32) #1

declare dso_local i64 @mkdir(i8*) #1

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
