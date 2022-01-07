; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_save.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32 }

@test_save.subkey = internal constant [23 x i8] c"Software\\Wine\\WineTest\00", align 16
@test_save.value = internal constant [12 x i8] c"toolbartest\00", align 1
@test_save.more_btns = internal constant [2 x %struct.TYPE_7__] [%struct.TYPE_7__ { i32 0, i32 11, i32 128, i64 130, i32 0, i64 0, i64 -1, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 13, i32 129, i64 130, i32 0, i64 0, i64 -1, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }], align 16
@test_save.expect = internal constant [25 x i32] [i32 51966, i32 1, i32 -889323520, i32 3, i32 -889323519, i32 5, i32 -889323518, i32 7, i32 -889323517, i32 9, i32 -889323516, i32 11, i32 -889323515, i32 13, i32 -889323514, i32 -1, i32 -889323513, i32 -2, i32 -889323512, i32 -2147483648, i32 -889323511, i32 2147483647, i32 -889323510, i32 256, i32 -889323509], align 16
@test_save.expect_btns = internal constant [11 x %struct.TYPE_7__] [%struct.TYPE_7__ { i32 0, i32 1, i32 129, i64 130, i32 0, i64 0, i64 0, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 3, i32 129, i64 130, i32 0, i64 1, i64 2, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 5, i32 129, i64 130, i32 0, i64 2, i64 0, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 7, i32 0, i64 130, i32 0, i64 0, i64 ptrtoint ([4 x i8]* @.str to i64), i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 9, i32 0, i64 130, i32 0, i64 0, i64 0, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 11, i32 0, i64 130, i32 0, i64 0, i64 3, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 13, i32 129, i64 130, i32 0, i64 6, i64 0, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 0, i32 129, i64 130, i32 0, i64 7, i64 0, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 0, i32 129, i64 130, i32 0, i64 8, i64 0, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 0, i32 129, i64 130, i32 0, i64 9, i64 0, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.TYPE_7__ { i32 0, i32 2147483647, i32 129, i64 130, i32 0, i64 10, i64 0, i64 0, i64 0, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@TB_ADDBUTTONSW = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@NUM_MSG_SEQUENCES = common dso_local global i32 0, align 4
@TB_SAVERESTOREW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"saving failed\0A\00", align 1
@PARENT_SEQ_INDEX = common dso_local global i32 0, align 4
@save_parent_seq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@REG_BINARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"mismatch\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"restoring failed\0A\00", align 1
@restore_parent_seq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@TB_BUTTONCOUNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@TB_GETBUTTON = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"%d: got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%d: got %02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%d: got %lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%d: got %s\0A\00", align 1
@alloced_str = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"string not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_save() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  store i32* null, i32** %1, align 8
  store i32 400, i32* %6, align 4
  %11 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @test_save.subkey, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_save.value, i64 0, i64 0), i8** %14, align 8
  %15 = call i32 @rebuild_toolbar_with_buttons(i32** %1)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @TB_ADDBUTTONSW, align 4
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* getelementptr inbounds ([2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* @test_save.more_btns, i64 0, i64 0))
  %19 = call i32 @SendMessageW(i32* %16, i32 %17, i32 %18, i32 ptrtoint ([2 x %struct.TYPE_7__]* @test_save.more_btns to i32))
  %20 = load i32, i32* @sequences, align 4
  %21 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %22 = call i32 @flush_sequences(i32 %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @TB_SAVERESTOREW, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = ptrtoint %struct.TYPE_6__* %2 to i32
  %27 = call i32 @SendMessageW(i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @sequences, align 4
  %31 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %32 = load i32, i32* @save_parent_seq, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @ok_sequence(i32 %30, i32 %31, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @DestroyWindow(i32* %35)
  %37 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %38 = call i32 @RegOpenKeyW(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @test_save.subkey, i64 0, i64 0), i32* %4)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %47 = call i32 @RegQueryValueExW(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_save.value, i64 0, i64 0), i32* null, i32* %7, i32* %46, i32* %6)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @REG_BINARY, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %61, 100
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @memcmp(i32* %66, i32* getelementptr inbounds ([25 x i32], [25 x i32]* @test_save.expect, i64 0, i64 0), i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @RegCloseKey(i32 %73)
  store i32* null, i32** %1, align 8
  %75 = call i32 @rebuild_toolbar(i32** %1)
  %76 = load i32, i32* @sequences, align 4
  %77 = load i32, i32* @NUM_MSG_SEQUENCES, align 4
  %78 = call i32 @flush_sequences(i32 %76, i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = load i32, i32* @TB_SAVERESTOREW, align 4
  %81 = load i32, i32* @FALSE, align 4
  %82 = ptrtoint %struct.TYPE_6__* %2 to i32
  %83 = call i32 @SendMessageW(i32* %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* @sequences, align 4
  %87 = load i32, i32* @PARENT_SEQ_INDEX, align 4
  %88 = load i32, i32* @restore_parent_seq, align 4
  %89 = load i32, i32* @FALSE, align 4
  %90 = call i32 @ok_sequence(i32 %86, i32 %87, i32 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = load i32, i32* @TB_BUTTONCOUNT, align 4
  %93 = call i32 @SendMessageW(i32* %91, i32 %92, i32 0, i32 0)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* getelementptr inbounds ([11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 0))
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %230, %0
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %233

104:                                              ; preds = %100
  %105 = load i32*, i32** %1, align 8
  %106 = load i32, i32* @TB_GETBUTTON, align 4
  %107 = load i32, i32* %8, align 4
  %108 = ptrtoint %struct.TYPE_7__* %10 to i32
  %109 = call i32 @SendMessageW(i32* %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 16
  %120 = icmp eq i64 %114, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %8, align 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %122, i64 %124)
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %127, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %8, align 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %135, i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 16
  %146 = icmp eq i64 %140, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %8, align 4
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %148, i64 %150)
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %153, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %8, align 4
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %161, i64 %163)
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 7
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 16
  %172 = icmp eq i64 %166, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %8, align 4
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %174, i64 %176)
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 8
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @IS_INTRESOURCE(i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %104
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 8
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 8
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %187, %192
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %8, align 4
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 8
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %195, i64 %197)
  br label %218

199:                                              ; preds = %104
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 8
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [11 x %struct.TYPE_7__], [11 x %struct.TYPE_7__]* @test_save.expect_btns, i64 0, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i8*
  %209 = call i32 @strcmp(i8* %202, i8* %208)
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %8, align 4
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 8
  %215 = load i64, i64* %214, align 8
  %216 = inttoptr i64 %215 to i8*
  %217 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %213, i8* %216)
  br label %218

218:                                              ; preds = %199, %185
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 7
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 8
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @alloced_str, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %229

229:                                              ; preds = %222, %218
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %8, align 4
  br label %100

233:                                              ; preds = %100
  %234 = load i32*, i32** %1, align 8
  %235 = call i32 @DestroyWindow(i32* %234)
  %236 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %237 = call i32 @RegOpenKeyW(i32 %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @test_save.subkey, i64 0, i64 0), i32* %4)
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @RegDeleteValueW(i32 %238, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_save.value, i64 0, i64 0))
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @RegCloseKey(i32 %240)
  ret void
}

declare dso_local i32 @rebuild_toolbar_with_buttons(i32**) #1

declare dso_local i32 @SendMessageW(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @flush_sequences(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ok_sequence(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32 @RegOpenKeyW(i32, i8*, i32*) #1

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @rebuild_toolbar(i32**) #1

declare dso_local i64 @IS_INTRESOURCE(i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @RegDeleteValueW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
