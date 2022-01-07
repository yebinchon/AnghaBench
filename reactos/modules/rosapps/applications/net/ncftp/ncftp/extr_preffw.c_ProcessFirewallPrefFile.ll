; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_preffw.c_ProcessFirewallPrefFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_preffw.c_ProcessFirewallPrefFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" =\09\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"firewall-type\00", align 1
@kFirewallLastType = common dso_local global i32 0, align 4
@gFirewallType = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"firewall-host\00", align 1
@gFirewallHost = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"firewall-port\00", align 1
@gFirewallPort = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"firewall-user\00", align 1
@gFirewallUser = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"firewall-pass\00", align 1
@gFirewallPass = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"firewall-password\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"firewall-exception-list\00", align 1
@gFirewallExceptionList = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@kFallBackToSendPortMode = common dso_local global i8* null, align 8
@gFwDataPortMode = common dso_local global i8* null, align 8
@gDataPortMode = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@kPassiveMode = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@kSendPortMode = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessFirewallPrefFile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255
  store i8 0, i8* %7, align 1
  br label %8

8:                                                ; preds = %143, %29, %24, %1
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @fgets(i8* %9, i32 255, i32* %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %144

13:                                               ; preds = %8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %15 = call i8* @strtok(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %13
  br label %8

25:                                               ; preds = %18
  %26 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %8

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @ISTREQ(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @atoi(i8* %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @kFirewallLastType, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @gFirewallType, align 4
  br label %46

46:                                               ; preds = %44, %40, %34
  br label %143

47:                                               ; preds = %30
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @ISTREQ(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @gFirewallHost, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @STRNCPY(i32 %52, i8* %53)
  br label %142

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @ISTREQ(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i8* @atoi(i8* %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* @gFirewallPort, align 4
  br label %67

67:                                               ; preds = %65, %59
  br label %141

68:                                               ; preds = %55
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @ISTREQ(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @gFirewallUser, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @STRNCPY(i32 %73, i8* %74)
  br label %140

76:                                               ; preds = %68
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @ISTREQ(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @gFirewallPass, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @STRNCPY(i32 %81, i8* %82)
  br label %139

84:                                               ; preds = %76
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @ISTREQ(i8* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @gFirewallPass, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @STRNCPY(i32 %89, i8* %90)
  br label %138

92:                                               ; preds = %84
  %93 = load i8*, i8** %4, align 8
  %94 = call i64 @ISTREQ(i8* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* @gFirewallExceptionList, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @STRNCPY(i32 %97, i8* %98)
  br label %137

100:                                              ; preds = %92
  %101 = load i8*, i8** %4, align 8
  %102 = call i64 @ISTREQ(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @ISTREQ(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i8*, i8** @kFallBackToSendPortMode, align 8
  store i8* %109, i8** @gFwDataPortMode, align 8
  store i8* %109, i8** @gDataPortMode, align 8
  br label %135

110:                                              ; preds = %104
  %111 = load i8*, i8** %5, align 8
  %112 = call i64 @ISTREQ(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i8*, i8** @kPassiveMode, align 8
  store i8* %115, i8** @gFwDataPortMode, align 8
  store i8* %115, i8** @gDataPortMode, align 8
  br label %134

116:                                              ; preds = %110
  %117 = load i8*, i8** %5, align 8
  %118 = call i64 @ISTREQ(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i8*, i8** @kSendPortMode, align 8
  store i8* %121, i8** @gFwDataPortMode, align 8
  store i8* %121, i8** @gDataPortMode, align 8
  br label %133

122:                                              ; preds = %116
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @isdigit(i8 signext %125)
  %127 = trunc i64 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i8*, i8** %5, align 8
  %131 = call i8* @atoi(i8* %130)
  store i8* %131, i8** @gFwDataPortMode, align 8
  store i8* %131, i8** @gDataPortMode, align 8
  br label %132

132:                                              ; preds = %129, %122
  br label %133

133:                                              ; preds = %132, %120
  br label %134

134:                                              ; preds = %133, %114
  br label %135

135:                                              ; preds = %134, %108
  br label %136

136:                                              ; preds = %135, %100
  br label %137

137:                                              ; preds = %136, %96
  br label %138

138:                                              ; preds = %137, %88
  br label %139

139:                                              ; preds = %138, %80
  br label %140

140:                                              ; preds = %139, %72
  br label %141

141:                                              ; preds = %140, %67
  br label %142

142:                                              ; preds = %141, %51
  br label %143

143:                                              ; preds = %142, %46
  br label %8

144:                                              ; preds = %8
  ret void
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @ISTREQ(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @STRNCPY(i32, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
