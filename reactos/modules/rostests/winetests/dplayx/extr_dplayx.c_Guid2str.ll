; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_Guid2str.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_Guid2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@DPSPGUID_IPX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"DPSPGUID_IPX\00", align 1
@DPSPGUID_TCPIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"DPSPGUID_TCPIP\00", align 1
@DPSPGUID_SERIAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"DPSPGUID_SERIAL\00", align 1
@DPSPGUID_MODEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"DPSPGUID_MODEM\00", align 1
@DPAID_TotalSize = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"DPAID_TotalSize\00", align 1
@DPAID_ServiceProvider = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"DPAID_ServiceProvider\00", align 1
@DPAID_LobbyProvider = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"DPAID_LobbyProvider\00", align 1
@DPAID_Phone = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"DPAID_Phone\00", align 1
@DPAID_PhoneW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"DPAID_PhoneW\00", align 1
@DPAID_Modem = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"DPAID_Modem\00", align 1
@DPAID_ModemW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"DPAID_ModemW\00", align 1
@DPAID_INet = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"DPAID_INet\00", align 1
@DPAID_INetW = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"DPAID_INetW\00", align 1
@DPAID_INetPort = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"DPAID_INetPort\00", align 1
@DPAID_ComPort = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"DPAID_ComPort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @Guid2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Guid2str(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %85

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @IsEqualGUID(i32* %8, i32* @DPSPGUID_IPX)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %85

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @IsEqualGUID(i32* %13, i32* @DPSPGUID_TCPIP)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %85

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @IsEqualGUID(i32* %18, i32* @DPSPGUID_SERIAL)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %85

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @IsEqualGUID(i32* %23, i32* @DPSPGUID_MODEM)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %85

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @IsEqualGUID(i32* %28, i32* @DPAID_TotalSize)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %85

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @IsEqualGUID(i32* %33, i32* @DPAID_ServiceProvider)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %85

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @IsEqualGUID(i32* %38, i32* @DPAID_LobbyProvider)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %85

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @IsEqualGUID(i32* %43, i32* @DPAID_Phone)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %85

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @IsEqualGUID(i32* %48, i32* @DPAID_PhoneW)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %85

52:                                               ; preds = %47
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @IsEqualGUID(i32* %53, i32* @DPAID_Modem)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %85

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = call i64 @IsEqualGUID(i32* %58, i32* @DPAID_ModemW)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %85

62:                                               ; preds = %57
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @IsEqualGUID(i32* %63, i32* @DPAID_INet)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %85

67:                                               ; preds = %62
  %68 = load i32*, i32** %3, align 8
  %69 = call i64 @IsEqualGUID(i32* %68, i32* @DPAID_INetW)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %85

72:                                               ; preds = %67
  %73 = load i32*, i32** %3, align 8
  %74 = call i64 @IsEqualGUID(i32* %73, i32* @DPAID_INetPort)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %85

77:                                               ; preds = %72
  %78 = load i32*, i32** %3, align 8
  %79 = call i64 @IsEqualGUID(i32* %78, i32* @DPAID_ComPort)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = call i8* @wine_dbgstr_guid(i32* %83)
  store i8* %84, i8** %2, align 8
  br label %85

85:                                               ; preds = %82, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16, %11, %6
  %86 = load i8*, i8** %2, align 8
  ret i8* %86
}

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i8* @wine_dbgstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
