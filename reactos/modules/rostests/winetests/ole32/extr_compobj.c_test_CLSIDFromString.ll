; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CLSIDFromString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CLSIDFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@wszCLSID_StdFont = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"CLSIDFromString\00", align 1
@CLSID_StdFont = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"clsid wasn't equal to CLSID_StdFont\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@CLSID_NULL = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"clsid wasn't equal to CLSID_NULL\0A\00", align 1
@cf_brokenW = common dso_local global i8* null, align 8
@CO_E_CLASSSTRING = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Got %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Got %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CLSIDFromString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CLSIDFromString() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca [50 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @wszCLSID_StdFont, align 8
  %6 = call i32 @CLSIDFromString(i8* %5, %struct.TYPE_10__* %1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ok_ole_success(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @IsEqualCLSID(%struct.TYPE_10__* %1, %struct.TYPE_11__* @CLSID_StdFont)
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @memset(%struct.TYPE_10__* %1, i32 171, i32 8)
  %12 = call i32 @CLSIDFromString(i8* null, %struct.TYPE_10__* %1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @S_OK, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = call i32 @IsEqualCLSID(%struct.TYPE_10__* %1, %struct.TYPE_11__* @CLSID_NULL)
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @memset(%struct.TYPE_10__* %1, i32 0, i32 8)
  %22 = load i8*, i8** @cf_brokenW, align 8
  %23 = call i32 @CLSIDFromString(i8* %22, %struct.TYPE_10__* %1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @IsEqualCLSID(%struct.TYPE_10__* %1, %struct.TYPE_11__* @IID_IClassFactory)
  %31 = call i32 @wine_dbgstr_guid(%struct.TYPE_10__* %1)
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %34 = load i8*, i8** @wszCLSID_StdFont, align 8
  %35 = call i32 @lstrcpyW(i8* %33, i8* %34)
  %36 = load i8*, i8** @wszCLSID_StdFont, align 8
  %37 = call i32 @lstrlenW(i8* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %45, %0
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 49
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 %43
  store i8 65, i8* %44, align 1
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %38

48:                                               ; preds = %38
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = call i32 @memset(%struct.TYPE_10__* %1, i32 0, i32 8)
  %53 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %54 = call i32 @CLSIDFromString(i8* %53, %struct.TYPE_10__* %1)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = call i32 @IsEqualCLSID(%struct.TYPE_10__* %1, %struct.TYPE_11__* @CLSID_StdFont)
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** @wszCLSID_StdFont, align 8
  %64 = call i32 @lstrlenW(i8* %63)
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 %66
  store i8 65, i8* %67, align 1
  %68 = call i32 @memset(%struct.TYPE_10__* %1, i32 0, i32 8)
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %70 = call i32 @CLSIDFromString(i8* %69, %struct.TYPE_10__* %1)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = call i32 @IsEqualCLSID(%struct.TYPE_10__* %1, %struct.TYPE_11__* @CLSID_StdFont)
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i8*, i8** @wszCLSID_StdFont, align 8
  %80 = call i32 @lstrlenW(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 %81
  store i8 0, i8* %82, align 1
  %83 = call i32 @memset(%struct.TYPE_10__* %1, i32 0, i32 8)
  %84 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %85 = call i32 @CLSIDFromString(i8* %84, %struct.TYPE_10__* %1)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = call i32 @IsEqualCLSID(%struct.TYPE_10__* %1, %struct.TYPE_11__* @CLSID_StdFont)
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i8*, i8** @wszCLSID_StdFont, align 8
  %95 = call i32 @lstrlenW(i8* %94)
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 %97
  store i8 0, i8* %98, align 1
  %99 = call i32 @memset(%struct.TYPE_10__* %1, i32 0, i32 8)
  %100 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %101 = call i32 @CLSIDFromString(i8* %100, %struct.TYPE_10__* %1)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = call i32 @IsEqualCLSID(%struct.TYPE_10__* %1, %struct.TYPE_11__* @CLSID_StdFont)
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %110 = call i32 @memset(%struct.TYPE_10__* %1, i32 204, i32 8)
  %111 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = call i32 @CLSIDFromString(i8* %112, %struct.TYPE_10__* %1)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %4, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = call i32 @IsEqualCLSID(%struct.TYPE_10__* %1, %struct.TYPE_11__* @CLSID_NULL)
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %122 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 9
  store i8 42, i8* %122, align 1
  %123 = call i32 @memset(%struct.TYPE_10__* %1, i32 204, i32 8)
  %124 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %125 = call i32 @CLSIDFromString(i8* %124, %struct.TYPE_10__* %1)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CLSID_StdFont, i32 0, i32 0), align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 52428
  %143 = zext i1 %142 to i32
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 3
  store i8 42, i8* %147, align 1
  %148 = call i32 @memset(%struct.TYPE_10__* %1, i32 204, i32 8)
  %149 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %150 = call i32 @CLSIDFromString(i8* %149, %struct.TYPE_10__* %1)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %4, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 11
  %160 = zext i1 %159 to i32
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 52428
  %167 = zext i1 %166 to i32
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  %171 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 3
  store i8 0, i8* %171, align 1
  %172 = call i32 @memset(%struct.TYPE_10__* %1, i32 204, i32 8)
  %173 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %174 = call i32 @CLSIDFromString(i8* %173, %struct.TYPE_10__* %1)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @CO_E_CLASSSTRING, align 4
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %4, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 11
  %184 = zext i1 %183 to i32
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 52428
  %191 = zext i1 %190 to i32
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  ret void
}

declare dso_local i32 @CLSIDFromString(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @ok_ole_success(i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IsEqualCLSID(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_guid(%struct.TYPE_10__*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
