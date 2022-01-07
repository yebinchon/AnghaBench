; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_test-journal.c_test_non_empty.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_test-journal.c_test_non_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@test_non_empty.test = internal constant [8 x i8] c"TEST1=1\00", align 1
@test_non_empty.test2 = internal constant [8 x i8] c"TEST2=2\00", align 1
@__const.test_non_empty.t = private unnamed_addr constant [24 x i8] c"/var/tmp/journal-XXXXXX\00", align 16
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"test.journal\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@DIRECTION_DOWN = common dso_local global i32 0, align 4
@DIRECTION_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"quux\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Done...\00", align 1
@arg_keep = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Not removing %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@REMOVE_ROOT = common dso_local global i32 0, align 4
@REMOVE_PHYSICAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"------------------------------------------------------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_non_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_non_empty() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.iovec, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [24 x i8], align 16
  %8 = alloca %struct.iovec, align 4
  %9 = alloca %struct.iovec, align 4
  %10 = alloca %struct.iovec, align 4
  %11 = bitcast [24 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.test_non_empty.t, i32 0, i32 0), i64 24, i1 false)
  %12 = load i32, i32* @LOG_DEBUG, align 4
  %13 = call i32 @test_setup_logging(i32 %12)
  %14 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %15 = call i32 @mkdtemp_chdir_chattr(i8* %14)
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = load i32, i32* @O_CREAT, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @journal_file_open(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i32 438, i32 1, i32 -1, i32 1, i32* null, i32* null, i32* null, i32* null, i32** %2)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = call i32 @dual_timestamp_get(i32* %1)
  %24 = call i32 @assert_se(i32 %23)
  %25 = call i64 @sd_id128_randomize(i32* %6)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = call i32 @IOVEC_MAKE_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_non_empty.test, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.iovec* %3 to i8*
  %32 = bitcast %struct.iovec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i32*, i32** %2, align 8
  %34 = call i64 @journal_file_append_entry(i32* %33, i32* %1, i32* null, %struct.iovec* %3, i32 1, i32* null, i32* null, i32* null)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = call i32 @IOVEC_MAKE_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_non_empty.test2, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.iovec* %3 to i8*
  %41 = bitcast %struct.iovec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @journal_file_append_entry(i32* %42, i32* %1, i32* null, %struct.iovec* %3, i32 1, i32* null, i32* null, i32* null)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = call i32 @IOVEC_MAKE_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_non_empty.test, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = bitcast %struct.iovec* %3 to i8*
  %50 = bitcast %struct.iovec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load i32*, i32** %2, align 8
  %52 = call i64 @journal_file_append_entry(i32* %51, i32* %1, i32* %6, %struct.iovec* %3, i32 1, i32* null, i32* null, i32* null)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @journal_file_dump(i32* %56)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @DIRECTION_DOWN, align 4
  %60 = call i32 @journal_file_next_entry(i32* %58, i32 0, i32 %59, %struct.TYPE_7__** %4, i32* %5)
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert_se(i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le64toh(i32 %67)
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @DIRECTION_DOWN, align 4
  %75 = call i32 @journal_file_next_entry(i32* %72, i32 %73, i32 %74, %struct.TYPE_7__** %4, i32* %5)
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert_se(i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le64toh(i32 %82)
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert_se(i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @DIRECTION_DOWN, align 4
  %90 = call i32 @journal_file_next_entry(i32* %87, i32 %88, i32 %89, %struct.TYPE_7__** %4, i32* %5)
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert_se(i32 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le64toh(i32 %97)
  %99 = icmp eq i32 %98, 3
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert_se(i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @sd_id128_equal(i32 %105, i32 %106)
  %108 = call i32 @assert_se(i32 %107)
  %109 = load i32*, i32** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @DIRECTION_DOWN, align 4
  %112 = call i32 @journal_file_next_entry(i32* %109, i32 %110, i32 %111, %struct.TYPE_7__** %4, i32* %5)
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert_se(i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = load i32, i32* @DIRECTION_DOWN, align 4
  %118 = call i32 @journal_file_next_entry(i32* %116, i32 0, i32 %117, %struct.TYPE_7__** %4, i32* %5)
  %119 = icmp eq i32 %118, 1
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert_se(i32 %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le64toh(i32 %125)
  %127 = icmp eq i32 %126, 1
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert_se(i32 %128)
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_non_empty.test, i64 0, i64 0))
  %132 = call i32 @journal_file_find_data_object(i32* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_non_empty.test, i64 0, i64 0), i32 %131, i32* null, i32* %5)
  %133 = icmp eq i32 %132, 1
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert_se(i32 %134)
  %136 = load i32*, i32** %2, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @DIRECTION_DOWN, align 4
  %139 = call i32 @journal_file_next_entry_for_data(i32* %136, i32* null, i32 0, i32 %137, i32 %138, %struct.TYPE_7__** %4, i32* null)
  %140 = icmp eq i32 %139, 1
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert_se(i32 %141)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le64toh(i32 %146)
  %148 = icmp eq i32 %147, 1
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert_se(i32 %149)
  %151 = load i32*, i32** %2, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @DIRECTION_UP, align 4
  %154 = call i32 @journal_file_next_entry_for_data(i32* %151, i32* null, i32 0, i32 %152, i32 %153, %struct.TYPE_7__** %4, i32* null)
  %155 = icmp eq i32 %154, 1
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert_se(i32 %156)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le64toh(i32 %161)
  %163 = icmp eq i32 %162, 3
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert_se(i32 %164)
  %166 = load i32*, i32** %2, align 8
  %167 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_non_empty.test2, i64 0, i64 0))
  %168 = call i32 @journal_file_find_data_object(i32* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_non_empty.test2, i64 0, i64 0), i32 %167, i32* null, i32* %5)
  %169 = icmp eq i32 %168, 1
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert_se(i32 %170)
  %172 = load i32*, i32** %2, align 8
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @DIRECTION_UP, align 4
  %175 = call i32 @journal_file_next_entry_for_data(i32* %172, i32* null, i32 0, i32 %173, i32 %174, %struct.TYPE_7__** %4, i32* null)
  %176 = icmp eq i32 %175, 1
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert_se(i32 %177)
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @le64toh(i32 %182)
  %184 = icmp eq i32 %183, 2
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert_se(i32 %185)
  %187 = load i32*, i32** %2, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @DIRECTION_DOWN, align 4
  %190 = call i32 @journal_file_next_entry_for_data(i32* %187, i32* null, i32 0, i32 %188, i32 %189, %struct.TYPE_7__** %4, i32* null)
  %191 = icmp eq i32 %190, 1
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert_se(i32 %192)
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @le64toh(i32 %197)
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert_se(i32 %200)
  %202 = load i32*, i32** %2, align 8
  %203 = call i32 @journal_file_find_data_object(i32* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* %5)
  %204 = icmp eq i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert_se(i32 %205)
  %207 = load i32*, i32** %2, align 8
  %208 = load i32, i32* @DIRECTION_DOWN, align 4
  %209 = call i32 @journal_file_move_to_entry_by_seqnum(i32* %207, i32 1, i32 %208, %struct.TYPE_7__** %4, i32* null)
  %210 = icmp eq i32 %209, 1
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert_se(i32 %211)
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @le64toh(i32 %216)
  %218 = icmp eq i32 %217, 1
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert_se(i32 %219)
  %221 = load i32*, i32** %2, align 8
  %222 = load i32, i32* @DIRECTION_DOWN, align 4
  %223 = call i32 @journal_file_move_to_entry_by_seqnum(i32* %221, i32 3, i32 %222, %struct.TYPE_7__** %4, i32* null)
  %224 = icmp eq i32 %223, 1
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert_se(i32 %225)
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @le64toh(i32 %230)
  %232 = icmp eq i32 %231, 3
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert_se(i32 %233)
  %235 = load i32*, i32** %2, align 8
  %236 = load i32, i32* @DIRECTION_DOWN, align 4
  %237 = call i32 @journal_file_move_to_entry_by_seqnum(i32* %235, i32 2, i32 %236, %struct.TYPE_7__** %4, i32* null)
  %238 = icmp eq i32 %237, 1
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert_se(i32 %239)
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @le64toh(i32 %244)
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert_se(i32 %247)
  %249 = load i32*, i32** %2, align 8
  %250 = load i32, i32* @DIRECTION_DOWN, align 4
  %251 = call i32 @journal_file_move_to_entry_by_seqnum(i32* %249, i32 10, i32 %250, %struct.TYPE_7__** %4, i32* null)
  %252 = icmp eq i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert_se(i32 %253)
  %255 = call i32 @journal_file_rotate(i32** %2, i32 1, i32 -1, i32 1, i32* null)
  %256 = call i32 @journal_file_rotate(i32** %2, i32 1, i32 -1, i32 1, i32* null)
  %257 = load i32*, i32** %2, align 8
  %258 = call i32 @journal_file_close(i32* %257)
  %259 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %260 = load i64, i64* @arg_keep, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %0
  %263 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %264 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %263)
  br label %275

265:                                              ; preds = %0
  %266 = call i32 @journal_directory_vacuum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 3000000, i32 0, i32 0, i32* null, i32 1)
  %267 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %268 = load i32, i32* @REMOVE_ROOT, align 4
  %269 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %270 = or i32 %268, %269
  %271 = call i64 @rm_rf(i8* %267, i32 %270)
  %272 = icmp sge i64 %271, 0
  %273 = zext i1 %272 to i32
  %274 = call i32 @assert_se(i32 %273)
  br label %275

275:                                              ; preds = %265, %262
  %276 = call i32 @puts(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_setup_logging(i32) #2

declare dso_local i32 @mkdtemp_chdir_chattr(i8*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @journal_file_open(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32**) #2

declare dso_local i32 @dual_timestamp_get(i32*) #2

declare dso_local i64 @sd_id128_randomize(i32*) #2

declare dso_local i32 @IOVEC_MAKE_STRING(i8*) #2

declare dso_local i64 @journal_file_append_entry(i32*, i32*, i32*, %struct.iovec*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @journal_file_dump(i32*) #2

declare dso_local i32 @journal_file_next_entry(i32*, i32, i32, %struct.TYPE_7__**, i32*) #2

declare dso_local i32 @le64toh(i32) #2

declare dso_local i32 @sd_id128_equal(i32, i32) #2

declare dso_local i32 @journal_file_find_data_object(i32*, i8*, i32, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @journal_file_next_entry_for_data(i32*, i32*, i32, i32, i32, %struct.TYPE_7__**, i32*) #2

declare dso_local i32 @journal_file_move_to_entry_by_seqnum(i32*, i32, i32, %struct.TYPE_7__**, i32*) #2

declare dso_local i32 @journal_file_rotate(i32**, i32, i32, i32, i32*) #2

declare dso_local i32 @journal_file_close(i32*) #2

declare dso_local i32 @log_info(i8*, ...) #2

declare dso_local i32 @journal_directory_vacuum(i8*, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @rm_rf(i8*, i32) #2

declare dso_local i32 @puts(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
