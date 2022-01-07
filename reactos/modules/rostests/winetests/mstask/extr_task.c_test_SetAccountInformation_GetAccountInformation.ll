; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task.c_test_SetAccountInformation_GetAccountInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task.c_test_SetAccountInformation_GetAccountInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SetAccountInformation_GetAccountInformation.dummy_account_name = private unnamed_addr constant [14 x i8] c"NoSuchAccount\00", align 1
@__const.test_SetAccountInformation_GetAccountInformation.dummy_account_name_b = private unnamed_addr constant [15 x i8] c"NoSuchAccountB\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"Failed to setup test_task\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to create task.  Skipping tests.\0A\00", align 1
@test_task = common dso_local global i32 0, align 4
@SCHED_E_NO_SECURITY_SERVICES = common dso_local global i32 0, align 4
@SCHED_E_SERVICE_NOT_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Security services are not supported\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@SCHED_E_CANNOT_OPEN_TASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unset account name generated: 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"Failed setting dummy account with no password: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"GetAccountInformation failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Got %s, expected %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Failed setting dummy account with password: %08x\0A\00", align 1
@empty = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed setting system account: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Got %s, expected empty string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetAccountInformation_GetAccountInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetAccountInformation_GetAccountInformation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [14 x i8], align 1
  %5 = alloca [15 x i8], align 1
  %6 = bitcast [14 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test_SetAccountInformation_GetAccountInformation.dummy_account_name, i32 0, i32 0), i64 14, i1 false)
  %7 = bitcast [15 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_SetAccountInformation_GetAccountInformation.dummy_account_name_b, i32 0, i32 0), i64 15, i1 false)
  %8 = call i32 (...) @setup_task()
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %204

15:                                               ; preds = %0
  %16 = load i32, i32* @test_task, align 4
  %17 = call i32 @ITask_GetAccountInformation(i32 %16, i8** %3)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SCHED_E_NO_SECURITY_SERVICES, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @SCHED_E_SERVICE_NOT_RUNNING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %15
  %26 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 (...) @cleanup_task()
  br label %204

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %31 = call i32 @HRESULT_FROM_WIN32(i32 %30)
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @SCHED_E_CANNOT_OPEN_TASK, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ true, %28 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @test_task, align 4
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %44 = call i32 @ITask_SetAccountInformation(i32 %42, i8* %43, i8* null)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @test_task, align 4
  %52 = call i32 @ITask_GetAccountInformation(i32 %51, i8** %3)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @S_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %73, label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %59 = call i32 @HRESULT_FROM_WIN32(i32 %58)
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @SCHED_E_CANNOT_OPEN_TASK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 512
  br label %68

68:                                               ; preds = %65, %61, %56
  %69 = phi i1 [ true, %61 ], [ true, %56 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @broken(i32 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %68, %37
  %74 = phi i1 [ true, %37 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %2, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @S_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %73
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %84 = call i32 @lstrcmpW(i8* %82, i8* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @wine_dbgstr_w(i8* %88)
  %90 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %91 = call i32 @wine_dbgstr_w(i8* %90)
  %92 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %91)
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 @CoTaskMemFree(i8* %93)
  br label %95

95:                                               ; preds = %81, %73
  %96 = load i32, i32* @test_task, align 4
  %97 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %98 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %99 = call i32 @ITask_SetAccountInformation(i32 %96, i8* %97, i8* %98)
  store i32 %99, i32* %2, align 4
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @S_OK, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %2, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @test_task, align 4
  %107 = call i32 @ITask_GetAccountInformation(i32 %106, i8** %3)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @S_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %128, label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %114 = call i32 @HRESULT_FROM_WIN32(i32 %113)
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %2, align 4
  %118 = load i32, i32* @SCHED_E_CANNOT_OPEN_TASK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %2, align 4
  %122 = icmp eq i32 %121, 512
  br label %123

123:                                              ; preds = %120, %116, %111
  %124 = phi i1 [ true, %116 ], [ true, %111 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = call i64 @broken(i32 %125)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %123, %95
  %129 = phi i1 [ true, %95 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %2, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %128
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %139 = call i32 @lstrcmpW(i8* %137, i8* %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @wine_dbgstr_w(i8* %143)
  %145 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %146 = call i32 @wine_dbgstr_w(i8* %145)
  %147 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %146)
  %148 = load i8*, i8** %3, align 8
  %149 = call i32 @CoTaskMemFree(i8* %148)
  br label %150

150:                                              ; preds = %136, %128
  %151 = load i32, i32* @test_task, align 4
  %152 = load i8*, i8** @empty, align 8
  %153 = call i32 @ITask_SetAccountInformation(i32 %151, i8* %152, i8* null)
  store i32 %153, i32* %2, align 4
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* @S_OK, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %2, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @test_task, align 4
  %161 = call i32 @ITask_GetAccountInformation(i32 %160, i8** %3)
  store i32 %161, i32* %2, align 4
  %162 = load i32, i32* %2, align 4
  %163 = load i32, i32* @S_OK, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %182, label %165

165:                                              ; preds = %150
  %166 = load i32, i32* %2, align 4
  %167 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %168 = call i32 @HRESULT_FROM_WIN32(i32 %167)
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %2, align 4
  %172 = load i32, i32* @SCHED_E_CANNOT_OPEN_TASK, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %2, align 4
  %176 = icmp eq i32 %175, 512
  br label %177

177:                                              ; preds = %174, %170, %165
  %178 = phi i1 [ true, %170 ], [ true, %165 ], [ %176, %174 ]
  %179 = zext i1 %178 to i32
  %180 = call i64 @broken(i32 %179)
  %181 = icmp ne i64 %180, 0
  br label %182

182:                                              ; preds = %177, %150
  %183 = phi i1 [ true, %150 ], [ %181, %177 ]
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %2, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %2, align 4
  %188 = load i32, i32* @S_OK, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %182
  %191 = load i8*, i8** %3, align 8
  %192 = load i8*, i8** @empty, align 8
  %193 = call i32 @lstrcmpW(i8* %191, i8* %192)
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = load i8*, i8** %3, align 8
  %198 = call i32 @wine_dbgstr_w(i8* %197)
  %199 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %198)
  %200 = load i8*, i8** %3, align 8
  %201 = call i32 @CoTaskMemFree(i8* %200)
  br label %202

202:                                              ; preds = %190, %182
  %203 = call i32 (...) @cleanup_task()
  br label %204

204:                                              ; preds = %202, %25, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_task(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @ITask_GetAccountInformation(i32, i8**) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @cleanup_task(...) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @ITask_SetAccountInformation(i32, i8*, i8*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @CoTaskMemFree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
