; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_schannel.c_test_supported_protocols.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_schannel.c_test_supported_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SECPKG_ATTR_SUPPORTED_PROTOCOLS = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"QueryCredentialsAttributes failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"protocols.grbitProtocol = %x, expected %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Supported protocols:\0A\00", align 1
@SP_PROT_SSL2_CLIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SSL 2 client\0A\00", align 1
@SP_PROT_SSL3_CLIENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"SSL 3 client\0A\00", align 1
@SP_PROT_TLS1_0_CLIENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"TLS 1.0 client\0A\00", align 1
@SP_PROT_TLS1_1_CLIENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"TLS 1.1 client\0A\00", align 1
@SP_PROT_TLS1_2_CLIENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"TLS 1.2 client\0A\00", align 1
@SP_PROT_TLS1_3_CLIENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"TLS 1.3 client\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Unknown flags: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_supported_protocols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_supported_protocols(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @SECPKG_ATTR_SUPPORTED_PROTOCOLS, align 4
  %9 = call i64 @QueryCredentialsAttributesA(i32* %7, i32 %8, %struct.TYPE_3__* %5)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @SEC_E_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32, i8*, i32, ...) @ok(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %2
  %30 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SP_PROT_SSL2_CLIENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* @SP_PROT_SSL2_CLIENT, align 4
  %40 = xor i32 %39, -1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %31
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SP_PROT_SSL3_CLIENT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @SP_PROT_SSL3_CLIENT, align 4
  %55 = xor i32 %54, -1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SP_PROT_TLS1_0_CLIENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* @SP_PROT_TLS1_0_CLIENT, align 4
  %70 = xor i32 %69, -1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %61
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SP_PROT_TLS1_1_CLIENT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* @SP_PROT_TLS1_1_CLIENT, align 4
  %85 = xor i32 %84, -1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %85
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %76
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SP_PROT_TLS1_2_CLIENT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i32, i32* @SP_PROT_TLS1_2_CLIENT, align 4
  %100 = xor i32 %99, -1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %91
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SP_PROT_TLS1_3_CLIENT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %114 = load i32, i32* @SP_PROT_TLS1_3_CLIENT, align 4
  %115 = xor i32 %114, -1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %112, %106
  br label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %124, %120
  ret void
}

declare dso_local i64 @QueryCredentialsAttributesA(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @trace(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
