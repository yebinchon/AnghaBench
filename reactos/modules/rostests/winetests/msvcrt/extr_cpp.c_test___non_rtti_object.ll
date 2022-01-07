; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_cpp.c_test___non_rtti_object.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_cpp.c_test___non_rtti_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32* }
%struct.TYPE_10__ = type { i8* }

@test___non_rtti_object.e_name = internal global i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [25 x i8] c"A __non_rtti_object name\00", align 1
@poperator_delete = common dso_local global i32 0, align 4
@p__non_rtti_object_ctor = common dso_local global i32 0, align 4
@p__non_rtti_object_copy_ctor = common dso_local global i32 0, align 4
@p__non_rtti_object_dtor = common dso_local global i8* null, align 8
@p__non_rtti_object_opequals = common dso_local global i32 0, align 4
@p__non_rtti_object_what = common dso_local global i8* null, align 8
@p__non_rtti_object_vtable = common dso_local global i64 0, align 8
@p__non_rtti_object_vector_dtor = common dso_local global i8* null, align 8
@p__non_rtti_object_scalar_dtor = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Null __non_rtti_object vtable for e\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Bad name '%s' for e\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"do_free set to %d for e\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Null __non_rtti_object vtable for e2\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Bad name '%s' for e2\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"do_free set to %d for e2\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"__non_rtti_object vtables differ!\0A\00", align 1
@pexception_default_ctor = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"Bad __non_rtti_object name for e2\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"opequals didn't return e2\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Bad __non_rtti_object name from e2::what()\0A\00", align 1
@pexception_vtable = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"Bad vtable for e2\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"new() failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Bad __non_rtti_object name from vtable e::what()\0A\00", align 1
@bAncientVersion = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c".?AV__non_rtti_object@@\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"bad rtti for e\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test___non_rtti_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test___non_rtti_object() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = load i32, i32* @poperator_delete, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %0
  %9 = load i32, i32* @p__non_rtti_object_ctor, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load i32, i32* @p__non_rtti_object_copy_ctor, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i8*, i8** @p__non_rtti_object_dtor, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i32, i32* @p__non_rtti_object_opequals, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i8*, i8** @p__non_rtti_object_what, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i64, i64* @p__non_rtti_object_vtable, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** @p__non_rtti_object_vector_dtor, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** @p__non_rtti_object_scalar_dtor, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %26, %23, %20, %17, %14, %11, %8, %0
  br label %304

33:                                               ; preds = %29
  %34 = call i32 @memset(%struct.TYPE_11__* %2, i32 0, i32 24)
  %35 = load i32, i32* @p__non_rtti_object_ctor, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8*, i8** @test___non_rtti_object.e_name, align 8
  %39 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %37, %struct.TYPE_11__* %2, i8* %38)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** @test___non_rtti_object.e_name, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %53, %48, %33
  %60 = phi i1 [ false, %48 ], [ false, %33 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 24)
  %73 = load i32, i32* @p__non_rtti_object_copy_ctor, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %75, %struct.TYPE_11__* %3, %struct.TYPE_11__* %2)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %59
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %91, %85, %59
  %98 = phi i1 [ false, %85 ], [ false, %59 ], [ %96, %91 ]
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 1
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %111, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i8*, i8** @p__non_rtti_object_dtor, align 8
  %118 = call i8* @call_func1(i8* %117, %struct.TYPE_11__* %3)
  %119 = call i32 @memset(%struct.TYPE_11__* %3, i32 1, i32 24)
  %120 = load i8*, i8** @pexception_default_ctor, align 8
  %121 = call i8* @call_func1(i8* %120, %struct.TYPE_11__* %3)
  %122 = load i32, i32* @p__non_rtti_object_opequals, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %124, %struct.TYPE_11__* %3, %struct.TYPE_11__* %2)
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %146

134:                                              ; preds = %97
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %136, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %140, %134, %97
  %147 = phi i1 [ false, %134 ], [ false, %97 ], [ %145, %140 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 1
  %153 = zext i1 %152 to i32
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = icmp eq %struct.TYPE_11__* %157, %3
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %161 = load i8*, i8** @p__non_rtti_object_what, align 8
  %162 = call i8* @call_func1(i8* %161, %struct.TYPE_11__* %3)
  store i8* %162, i8** %1, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** %1, align 8
  %166 = icmp eq i8* %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** @pexception_vtable, align 8
  %172 = icmp eq i32* %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %175 = load i8*, i8** @p__non_rtti_object_dtor, align 8
  %176 = call i8* @call_func1(i8* %175, %struct.TYPE_11__* %3)
  %177 = call %struct.TYPE_11__* @poperator_new(i32 24)
  store %struct.TYPE_11__* %177, %struct.TYPE_11__** %4, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %179 = icmp ne %struct.TYPE_11__* %178, null
  %180 = zext i1 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %183 = icmp ne %struct.TYPE_11__* %182, null
  br i1 %183, label %184, label %201

184:                                              ; preds = %146
  %185 = load i32, i32* @p__non_rtti_object_ctor, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %189 = load i8*, i8** @test___non_rtti_object.e_name, align 8
  %190 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %187, %struct.TYPE_11__* %188, i8* %189)
  %191 = load i8*, i8** @p__non_rtti_object_scalar_dtor, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %193 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %191, %struct.TYPE_11__* %192, i32 0)
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  store i8* null, i8** %195, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  store i32 0, i32* %197, align 8
  %198 = load i8*, i8** @p__non_rtti_object_scalar_dtor, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %200 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %198, %struct.TYPE_11__* %199, i32 1)
  br label %201

201:                                              ; preds = %184, %146
  %202 = call %struct.TYPE_11__* @poperator_new(i32 24)
  store %struct.TYPE_11__* %202, %struct.TYPE_11__** %4, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %204 = icmp ne %struct.TYPE_11__* %203, null
  %205 = zext i1 %204 to i32
  %206 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %208 = icmp ne %struct.TYPE_11__* %207, null
  br i1 %208, label %209, label %219

209:                                              ; preds = %201
  %210 = load i32, i32* @p__non_rtti_object_ctor, align 4
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = load i8*, i8** @test___non_rtti_object.e_name, align 8
  %215 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %212, %struct.TYPE_11__* %213, i8* %214)
  %216 = load i8*, i8** @p__non_rtti_object_vector_dtor, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %218 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %216, %struct.TYPE_11__* %217, i32 1)
  br label %219

219:                                              ; preds = %209, %201
  %220 = call %struct.TYPE_11__* @poperator_new(i32 104)
  store %struct.TYPE_11__* %220, %struct.TYPE_11__** %4, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %222 = icmp ne %struct.TYPE_11__* %221, null
  %223 = zext i1 %222 to i32
  %224 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %226 = icmp ne %struct.TYPE_11__* %225, null
  br i1 %226, label %227, label %264

227:                                              ; preds = %219
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %229 = bitcast %struct.TYPE_11__* %228 to i64*
  store i64 3, i64* %229, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %231 = bitcast %struct.TYPE_11__* %230 to i64*
  %232 = getelementptr inbounds i64, i64* %231, i64 1
  %233 = bitcast i64* %232 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %233, %struct.TYPE_11__** %4, align 8
  %234 = load i32, i32* @p__non_rtti_object_ctor, align 4
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i8*
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i64 0
  %239 = load i8*, i8** @test___non_rtti_object.e_name, align 8
  %240 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %236, %struct.TYPE_11__* %238, i8* %239)
  %241 = load i32, i32* @p__non_rtti_object_ctor, align 4
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i8*
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i64 1
  %246 = load i8*, i8** @test___non_rtti_object.e_name, align 8
  %247 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %243, %struct.TYPE_11__* %245, i8* %246)
  %248 = load i32, i32* @p__non_rtti_object_ctor, align 4
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i64 2
  %253 = load i8*, i8** @test___non_rtti_object.e_name, align 8
  %254 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %250, %struct.TYPE_11__* %252, i8* %253)
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 3
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  store i8* null, i8** %257, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i64 3
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  store i32 1, i32* %260, align 8
  %261 = load i8*, i8** @p__non_rtti_object_vector_dtor, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %263 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %261, %struct.TYPE_11__* %262, i32 3)
  br label %264

264:                                              ; preds = %227, %219
  %265 = load i64, i64* @p__non_rtti_object_vtable, align 8
  %266 = inttoptr i64 %265 to i8*
  %267 = bitcast i8* %266 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %267, %struct.TYPE_11__** %4, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = bitcast i32* %270 to i8*
  store i8* %271, i8** @p__non_rtti_object_vector_dtor, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  store i8* %274, i8** @p__non_rtti_object_what, align 8
  %275 = load i8*, i8** @p__non_rtti_object_what, align 8
  %276 = call i8* @call_func1(i8* %275, %struct.TYPE_11__* %2)
  store i8* %276, i8** %1, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load i8*, i8** %1, align 8
  %280 = icmp eq i8* %278, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 (i32, i8*, ...) @ok(i32 %281, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  br i1 true, label %283, label %301

283:                                              ; preds = %264
  %284 = load i32, i32* @bAncientVersion, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %301, label %286

286:                                              ; preds = %283
  %287 = call %struct.TYPE_10__* @p__RTtypeid(%struct.TYPE_11__* %2)
  store %struct.TYPE_10__* %287, %struct.TYPE_10__** %5, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %289 = icmp ne %struct.TYPE_10__* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @strcmp(i8* %293, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %295 = icmp ne i32 %294, 0
  %296 = xor i1 %295, true
  br label %297

297:                                              ; preds = %290, %286
  %298 = phi i1 [ false, %286 ], [ %296, %290 ]
  %299 = zext i1 %298 to i32
  %300 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %301

301:                                              ; preds = %297, %283, %264
  %302 = load i8*, i8** @p__non_rtti_object_vector_dtor, align 8
  %303 = call %struct.TYPE_11__* (i8*, %struct.TYPE_11__*, ...) @call_func2(i8* %302, %struct.TYPE_11__* %2, i32 0)
  br label %304

304:                                              ; preds = %301, %32
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @call_func2(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @call_func1(i8*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @poperator_new(i32) #1

declare dso_local %struct.TYPE_10__* @p__RTtypeid(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
