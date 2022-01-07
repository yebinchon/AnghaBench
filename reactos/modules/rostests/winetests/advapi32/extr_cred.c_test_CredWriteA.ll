; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredWriteA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_cred.c_test_CredWriteA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32, i32*, i32*, i64, i32*, i64, i64 }

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"CredWriteA should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@CRED_TYPE_GENERIC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@CRED_PERSIST_ENTERPRISE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@TEST_TARGET_NAME = common dso_local global i64 0, align 8
@CRED_TYPE_DOMAIN_PASSWORD = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Expected ERROR_IO_PENDING, got %d\0A\00", align 1
@ERROR_BAD_USERNAME = common dso_local global i64 0, align 8
@ERROR_NO_SUCH_LOGON_SESSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [110 x i8] c"CredWrite with username without domain should return ERROR_BAD_USERNAMEor ERROR_NO_SUCH_LOGON_SESSION not %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"CredWriteA with NULL username should have failed with ERROR_BAD_USERNAME instead of %d\0A\00", align 1
@CRED_PERSIST_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"CredWriteA failed with error %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"CredDeleteA failed with error %u\0A\00", align 1
@CRED_PERSIST_SESSION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"CredWriteA succeeded\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CredWriteA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CredWriteA() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = call i32 @pCredWriteA(%struct.TYPE_3__* null, i32 0)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @GetLastError()
  %9 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 10
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** @CRED_TYPE_GENERIC, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @CRED_PERSIST_ENTERPRISE, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %28, align 8
  %29 = call i32 @SetLastError(i32 -559038737)
  %30 = call i32 @pCredWriteA(%struct.TYPE_3__* %1, i32 0)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %11
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %11
  %38 = phi i1 [ false, %11 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* @TEST_TARGET_NAME, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** @CRED_TYPE_DOMAIN_PASSWORD, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = call i32 @SetLastError(i32 -559038737)
  %48 = call i32 @pCredWriteA(%struct.TYPE_3__* %1, i32 0)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %37
  %52 = call i64 (...) @GetLastError()
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = call i64 (...) @GetLastError()
  %57 = load i64, i64* @ERROR_IO_PENDING, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ true, %51 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  br label %77

64:                                               ; preds = %37
  %65 = call i64 (...) @GetLastError()
  %66 = load i64, i64* @ERROR_BAD_USERNAME, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = call i64 (...) @GetLastError()
  %70 = load i64, i64* @ERROR_NO_SUCH_LOGON_SESSION, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ true, %64 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 (...) @GetLastError()
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %72, %59
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* null, i8** %78, align 8
  %79 = call i32 @SetLastError(i32 -559038737)
  %80 = call i32 @pCredWriteA(%struct.TYPE_3__* %1, i32 0)
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = call i64 (...) @GetLastError()
  %85 = load i64, i64* @ERROR_BAD_USERNAME, align 8
  %86 = icmp eq i64 %84, %85
  br label %87

87:                                               ; preds = %83, %77
  %88 = phi i1 [ false, %77 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = call i64 (...) @GetLastError()
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* @CRED_PERSIST_LOCAL_MACHINE, align 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32 %93, i32* %94, align 8
  %95 = call i32 @SetLastError(i32 -559038737)
  %96 = call i32 @pCredWriteA(%struct.TYPE_3__* %1, i32 0)
  store i32 %96, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %87
  %100 = load i32, i32* %2, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @broken(i32 %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %99, %87
  %107 = phi i1 [ true, %87 ], [ %105, %99 ]
  %108 = zext i1 %107 to i32
  %109 = call i64 (...) @GetLastError()
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* %2, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load i64, i64* @TEST_TARGET_NAME, align 8
  %115 = load i8*, i8** @CRED_TYPE_DOMAIN_PASSWORD, align 8
  %116 = call i32 @pCredDeleteA(i64 %114, i8* %115, i32 0)
  store i32 %116, i32* %2, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i64 (...) @GetLastError()
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %113, %106
  %121 = load i8*, i8** @CRED_TYPE_GENERIC, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i8* %121, i8** %122, align 8
  %123 = call i32 @SetLastError(i32 -559038737)
  %124 = call i32 @pCredWriteA(%struct.TYPE_3__* %1, i32 0)
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %2, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i64 @broken(i32 %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %127, %120
  %135 = phi i1 [ true, %120 ], [ %133, %127 ]
  %136 = zext i1 %135 to i32
  %137 = call i64 (...) @GetLastError()
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %137)
  %139 = load i32, i32* %2, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load i64, i64* @TEST_TARGET_NAME, align 8
  %143 = load i8*, i8** @CRED_TYPE_GENERIC, align 8
  %144 = call i32 @pCredDeleteA(i64 %142, i8* %143, i32 0)
  store i32 %144, i32* %2, align 4
  %145 = load i32, i32* %2, align 4
  %146 = call i64 (...) @GetLastError()
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %146)
  br label %148

148:                                              ; preds = %141, %134
  %149 = load i32, i32* @CRED_PERSIST_SESSION, align 4
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32 %149, i32* %150, align 8
  %151 = call i32 @pCredWriteA(%struct.TYPE_3__* %1, i32 0)
  store i32 %151, i32* %2, align 4
  %152 = load i32, i32* %2, align 4
  %153 = call i64 (...) @GetLastError()
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %153)
  %155 = load i64, i64* @TEST_TARGET_NAME, align 8
  %156 = load i8*, i8** @CRED_TYPE_GENERIC, align 8
  %157 = call i32 @pCredDeleteA(i64 %155, i8* %156, i32 0)
  store i32 %157, i32* %2, align 4
  %158 = load i32, i32* %2, align 4
  %159 = call i64 (...) @GetLastError()
  %160 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %159)
  %161 = load i8*, i8** @CRED_TYPE_DOMAIN_PASSWORD, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i8* %161, i8** %162, align 8
  %163 = call i32 @SetLastError(i32 -559038737)
  %164 = call i32 @pCredWriteA(%struct.TYPE_3__* %1, i32 0)
  store i32 %164, i32* %2, align 4
  %165 = load i32, i32* %2, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %148
  %168 = load i32, i32* %2, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i64 @broken(i32 %171)
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %167, %148
  %175 = phi i1 [ true, %148 ], [ %173, %167 ]
  %176 = zext i1 %175 to i32
  %177 = call i64 (...) @GetLastError()
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %177)
  %179 = load i32, i32* %2, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load i64, i64* @TEST_TARGET_NAME, align 8
  %183 = load i8*, i8** @CRED_TYPE_DOMAIN_PASSWORD, align 8
  %184 = call i32 @pCredDeleteA(i64 %182, i8* %183, i32 0)
  store i32 %184, i32* %2, align 4
  %185 = load i32, i32* %2, align 4
  %186 = call i64 (...) @GetLastError()
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %186)
  br label %188

188:                                              ; preds = %181, %174
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* null, i8** %189, align 8
  %190 = call i32 @SetLastError(i32 -559038737)
  %191 = call i32 @pCredWriteA(%struct.TYPE_3__* %1, i32 0)
  store i32 %191, i32* %2, align 4
  %192 = load i32, i32* %2, align 4
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %197 = call i64 (...) @GetLastError()
  %198 = load i64, i64* @ERROR_BAD_USERNAME, align 8
  %199 = icmp eq i64 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i64 (...) @GetLastError()
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 %201)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pCredWriteA(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @pCredDeleteA(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
