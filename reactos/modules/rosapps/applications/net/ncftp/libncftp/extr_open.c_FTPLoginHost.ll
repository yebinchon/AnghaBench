; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPLoginHost.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPLoginHost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i64, i8, i64, i32*, i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i8*, i32)*, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i8* }

@kErrLoginFailed = common dso_local global i32 0, align 4
@kErrBadParameter = common dso_local global i32 0, align 4
@kFirewallNotInUse = common dso_local global i64 0, align 8
@kFirewallLastType = common dso_local global i64 0, align 8
@kLibraryMagic = common dso_local global i8* null, align 8
@kErrBadMagic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@kErrMallocFailed = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@kFirewallUserAtSite = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"USER %s@%s\00", align 1
@kFirewallUserAtUserPassAtPass = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"USER %s@%s@%s\00", align 1
@kFirewallUserAtSiteFwuPassFwp = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"USER %s@%s %s\00", align 1
@kFirewallFwuAtSiteFwpUserPass = common dso_local global i64 0, align 8
@kFirewallLoginThenUserAtSite = common dso_local global i64 0, align 8
@kFirewallOpenSite = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"OPEN %s\00", align 1
@kFirewallSiteSite = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"SITE %s\00", align 1
@kErrHostDisconnectedDuringLogin = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"PASS %s@%s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ACCT %s\00", align 1
@kErrBadRemoteUserOrPassword = common dso_local global i32 0, align 4
@kErrBadRemoteUser = common dso_local global i32 0, align 4
@kDontPerror = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Lost connection during login.\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Unexpected response: %s\0A\00", align 1
@kNoErr = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"Logged in to %s as %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPLoginHost(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %11 = load i32, i32* @kErrLoginFailed, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %13 = icmp eq %struct.TYPE_25__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @kErrBadParameter, align 4
  store i32 %15, i32* %2, align 4
  br label %649

16:                                               ; preds = %1
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @kFirewallNotInUse, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @kFirewallLastType, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @kErrBadParameter, align 4
  store i32 %29, i32* %2, align 4
  br label %649

30:                                               ; preds = %22
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @kLibraryMagic, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @kErrBadMagic, align 4
  store i32 %38, i32* %2, align 4
  br label %649

39:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @STRNCPY(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %39
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %58, %52
  store i32 1, i32* %6, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 16
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = call i32 @FTPInitializeAnonPassword(%struct.TYPE_22__* %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 16
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @STRNCPY(i8* %79, i8* %84)
  br label %86

86:                                               ; preds = %72, %64
  br label %87

87:                                               ; preds = %86, %58
  %88 = call %struct.TYPE_24__* (...) @InitResponse()
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %4, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %90 = icmp eq %struct.TYPE_24__* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i8*, i8** @kErrMallocFailed, align 8
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %5, align 4
  %94 = load i8*, i8** @kErrMallocFailed, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  br label %623

98:                                               ; preds = %87
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %537, %98
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  store i32 220, i32* %104, align 8
  store i32 0, i32* %9, align 4
  br label %110

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %619

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %102
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %515 [
    i32 220, label %114
    i32 230, label %238
    i32 231, label %238
    i32 202, label %238
    i32 421, label %330
    i32 331, label %332
    i32 332, label %467
    i32 532, label %467
    i32 530, label %505
    i32 501, label %514
    i32 503, label %514
    i32 550, label %514
  ]

114:                                              ; preds = %110
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @kFirewallNotInUse, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120, %114
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %126 = call i32 @ReInitResponse(%struct.TYPE_25__* %124, %struct.TYPE_24__* %125)
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %127, %struct.TYPE_24__* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %131)
  store i32 %132, i32* %5, align 4
  br label %237

133:                                              ; preds = %120
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @kFirewallUserAtSite, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %142 = call i32 @ReInitResponse(%struct.TYPE_25__* %140, %struct.TYPE_24__* %141)
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 5
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %143, %struct.TYPE_24__* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %147, i8* %150)
  store i32 %151, i32* %5, align 4
  br label %236

152:                                              ; preds = %133
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @kFirewallUserAtUserPassAtPass, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %152
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %161 = call i32 @ReInitResponse(%struct.TYPE_25__* %159, %struct.TYPE_24__* %160)
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 6
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 5
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %162, %struct.TYPE_24__* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %166, i8* %169, i8* %172)
  store i32 %173, i32* %5, align 4
  br label %235

174:                                              ; preds = %152
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @kFirewallUserAtSiteFwuPassFwp, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %196

180:                                              ; preds = %174
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %183 = call i32 @ReInitResponse(%struct.TYPE_25__* %181, %struct.TYPE_24__* %182)
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 5
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 6
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %184, %struct.TYPE_24__* %185, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %188, i8* %191, i8* %194)
  store i32 %195, i32* %5, align 4
  br label %234

196:                                              ; preds = %174
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @kFirewallFwuAtSiteFwpUserPass, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %196
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %205 = call i32 @ReInitResponse(%struct.TYPE_25__* %203, %struct.TYPE_24__* %204)
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 6
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %206, %struct.TYPE_24__* %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %210, i8* %213)
  store i32 %214, i32* %5, align 4
  br label %233

215:                                              ; preds = %196
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @kFirewallNotInUse, align 8
  %220 = icmp sgt i64 %218, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %224 = call i32 @ReInitResponse(%struct.TYPE_25__* %222, %struct.TYPE_24__* %223)
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 6
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %225, %struct.TYPE_24__* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %229)
  store i32 %230, i32* %5, align 4
  br label %232

231:                                              ; preds = %215
  br label %516

232:                                              ; preds = %221
  br label %233

233:                                              ; preds = %232, %202
  br label %234

234:                                              ; preds = %233, %180
  br label %235

235:                                              ; preds = %234, %158
  br label %236

236:                                              ; preds = %235, %139
  br label %237

237:                                              ; preds = %236, %123
  br label %537

238:                                              ; preds = %110, %110, %110
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @kFirewallNotInUse, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %247, label %244

244:                                              ; preds = %238
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244, %238
  br label %538

248:                                              ; preds = %244
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %8, align 4
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @kFirewallLoginThenUserAtSite, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %269

256:                                              ; preds = %248
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %259 = call i32 @ReInitResponse(%struct.TYPE_25__* %257, %struct.TYPE_24__* %258)
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 5
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %260, %struct.TYPE_24__* %261, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %264, i8* %267)
  store i32 %268, i32* %5, align 4
  br label %329

269:                                              ; preds = %248
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @kFirewallUserAtUserPassAtPass, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %269
  br label %538

276:                                              ; preds = %269
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @kFirewallOpenSite, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %292

282:                                              ; preds = %276
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %285 = call i32 @ReInitResponse(%struct.TYPE_25__* %283, %struct.TYPE_24__* %284)
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 5
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %286, %struct.TYPE_24__* %287, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %290)
  store i32 %291, i32* %5, align 4
  br label %327

292:                                              ; preds = %276
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @kFirewallSiteSite, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %308

298:                                              ; preds = %292
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %301 = call i32 @ReInitResponse(%struct.TYPE_25__* %299, %struct.TYPE_24__* %300)
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %304, i32 0, i32 5
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %302, %struct.TYPE_24__* %303, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %306)
  store i32 %307, i32* %5, align 4
  br label %326

308:                                              ; preds = %292
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @kFirewallFwuAtSiteFwpUserPass, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %324

314:                                              ; preds = %308
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %317 = call i32 @ReInitResponse(%struct.TYPE_25__* %315, %struct.TYPE_24__* %316)
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 2
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %318, %struct.TYPE_24__* %319, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %322)
  store i32 %323, i32* %5, align 4
  br label %325

324:                                              ; preds = %308
  br label %538

325:                                              ; preds = %314
  br label %326

326:                                              ; preds = %325, %298
  br label %327

327:                                              ; preds = %326, %282
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328, %256
  br label %537

330:                                              ; preds = %110
  %331 = load i32, i32* @kErrHostDisconnectedDuringLogin, align 4
  store i32 %331, i32* %5, align 4
  br label %619

332:                                              ; preds = %110
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @kFirewallNotInUse, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %341, label %338

338:                                              ; preds = %332
  %339 = load i32, i32* %8, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %375

341:                                              ; preds = %338, %332
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 3
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 0
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %365

349:                                              ; preds = %341
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 15
  %352 = load i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i8*, i32)*, i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i8*, i32)** %351, align 8
  %353 = icmp ne i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i8*, i32)* %352, @NoGetPassphraseProc
  br i1 %353, label %354, label %365

354:                                              ; preds = %349
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 15
  %357 = load i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i8*, i32)*, i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i8*, i32)** %356, align 8
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 3
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 %357(%struct.TYPE_25__* %358, %struct.TYPE_26__* %360, i8* %363, i32 8)
  br label %365

365:                                              ; preds = %354, %349, %341
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %368 = call i32 @ReInitResponse(%struct.TYPE_25__* %366, %struct.TYPE_24__* %367)
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 3
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %369, %struct.TYPE_24__* %370, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %373)
  store i32 %374, i32* %5, align 4
  br label %464

375:                                              ; preds = %338
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @kFirewallUserAtSite, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %391

381:                                              ; preds = %375
  %382 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %384 = call i32 @ReInitResponse(%struct.TYPE_25__* %382, %struct.TYPE_24__* %383)
  %385 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %386 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %387 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %387, i32 0, i32 3
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %385, %struct.TYPE_24__* %386, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %389)
  store i32 %390, i32* %5, align 4
  br label %463

391:                                              ; preds = %375
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @kFirewallUserAtUserPassAtPass, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %410

397:                                              ; preds = %391
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %400 = call i32 @ReInitResponse(%struct.TYPE_25__* %398, %struct.TYPE_24__* %399)
  %401 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %402 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %403, i32 0, i32 3
  %405 = load i8*, i8** %404, align 8
  %406 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %406, i32 0, i32 7
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %401, %struct.TYPE_24__* %402, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %405, i8* %408)
  store i32 %409, i32* %5, align 4
  br label %462

410:                                              ; preds = %391
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @kFirewallUserAtSiteFwuPassFwp, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %426

416:                                              ; preds = %410
  %417 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %418 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %419 = call i32 @ReInitResponse(%struct.TYPE_25__* %417, %struct.TYPE_24__* %418)
  %420 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %421 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %422, i32 0, i32 3
  %424 = load i8*, i8** %423, align 8
  %425 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %420, %struct.TYPE_24__* %421, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %424)
  store i32 %425, i32* %5, align 4
  br label %461

426:                                              ; preds = %410
  %427 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @kFirewallFwuAtSiteFwpUserPass, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %442

432:                                              ; preds = %426
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %434 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %435 = call i32 @ReInitResponse(%struct.TYPE_25__* %433, %struct.TYPE_24__* %434)
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %438, i32 0, i32 7
  %440 = load i8*, i8** %439, align 8
  %441 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %436, %struct.TYPE_24__* %437, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %440)
  store i32 %441, i32* %5, align 4
  br label %460

442:                                              ; preds = %426
  %443 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @kFirewallNotInUse, align 8
  %447 = icmp sgt i64 %445, %446
  br i1 %447, label %448, label %458

448:                                              ; preds = %442
  %449 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %450 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %451 = call i32 @ReInitResponse(%struct.TYPE_25__* %449, %struct.TYPE_24__* %450)
  %452 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %453 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %454, i32 0, i32 7
  %456 = load i8*, i8** %455, align 8
  %457 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %452, %struct.TYPE_24__* %453, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %456)
  store i32 %457, i32* %5, align 4
  br label %459

458:                                              ; preds = %442
  br label %516

459:                                              ; preds = %448
  br label %460

460:                                              ; preds = %459, %432
  br label %461

461:                                              ; preds = %460, %416
  br label %462

462:                                              ; preds = %461, %397
  br label %463

463:                                              ; preds = %462, %381
  br label %464

464:                                              ; preds = %463, %365
  %465 = load i32, i32* %7, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %7, align 4
  br label %537

467:                                              ; preds = %110, %110
  %468 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @kFirewallNotInUse, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %476, label %473

473:                                              ; preds = %467
  %474 = load i32, i32* %8, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %486

476:                                              ; preds = %473, %467
  %477 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %478 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %479 = call i32 @ReInitResponse(%struct.TYPE_25__* %477, %struct.TYPE_24__* %478)
  %480 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %481 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %482 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %482, i32 0, i32 8
  %484 = load i8*, i8** %483, align 8
  %485 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %480, %struct.TYPE_24__* %481, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %484)
  store i32 %485, i32* %5, align 4
  br label %504

486:                                              ; preds = %473
  %487 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = load i64, i64* @kFirewallUserAtSiteFwuPassFwp, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %502

492:                                              ; preds = %486
  %493 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %494 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %495 = call i32 @ReInitResponse(%struct.TYPE_25__* %493, %struct.TYPE_24__* %494)
  %496 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %497 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %498 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 7
  %500 = load i8*, i8** %499, align 8
  %501 = call i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) @RCmd(%struct.TYPE_25__* %496, %struct.TYPE_24__* %497, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %500)
  store i32 %501, i32* %5, align 4
  br label %503

502:                                              ; preds = %486
  br label %516

503:                                              ; preds = %492
  br label %504

504:                                              ; preds = %503, %476
  br label %537

505:                                              ; preds = %110
  %506 = load i32, i32* %7, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %505
  %509 = load i32, i32* @kErrBadRemoteUserOrPassword, align 4
  br label %512

510:                                              ; preds = %505
  %511 = load i32, i32* @kErrBadRemoteUser, align 4
  br label %512

512:                                              ; preds = %510, %508
  %513 = phi i32 [ %509, %508 ], [ %511, %510 ]
  store i32 %513, i32* %5, align 4
  br label %619

514:                                              ; preds = %110, %110, %110
  br label %619

515:                                              ; preds = %110
  br label %516

516:                                              ; preds = %515, %502, %458, %231
  %517 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %518, i32 0, i32 0
  %520 = load %struct.TYPE_23__*, %struct.TYPE_23__** %519, align 8
  %521 = icmp eq %struct.TYPE_23__* %520, null
  br i1 %521, label %522, label %526

522:                                              ; preds = %516
  %523 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %524 = load i32, i32* @kDontPerror, align 4
  %525 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @Error(%struct.TYPE_25__* %523, i32 %524, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %536

526:                                              ; preds = %516
  %527 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %528 = load i32, i32* @kDontPerror, align 4
  %529 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %530, i32 0, i32 0
  %532 = load %struct.TYPE_23__*, %struct.TYPE_23__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @Error(%struct.TYPE_25__* %527, i32 %528, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %534)
  br label %536

536:                                              ; preds = %526, %522
  br label %619

537:                                              ; preds = %504, %464, %329, %237
  br label %99

538:                                              ; preds = %324, %275, %247
  %539 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %540 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %539, i32 0, i32 14
  %541 = load i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)** %540, align 8
  %542 = icmp ne i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* %541, null
  br i1 %542, label %543, label %550

543:                                              ; preds = %538
  %544 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %545 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %544, i32 0, i32 14
  %546 = load i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)*, i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)** %545, align 8
  %547 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %548 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %549 = call i32 %546(%struct.TYPE_25__* %547, %struct.TYPE_24__* %548)
  br label %550

550:                                              ; preds = %543, %538
  %551 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %552 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %553 = call i32 @DoneWithResponse(%struct.TYPE_25__* %551, %struct.TYPE_24__* %552)
  store i32 0, i32* %5, align 4
  %554 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %555 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %554, i32 0, i32 9
  store i32 1, i32* %555, align 8
  %556 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %557 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %556, i32 0, i32 13
  %558 = load i32*, i32** %557, align 8
  %559 = icmp ne i32* %558, null
  br i1 %559, label %560, label %567

560:                                              ; preds = %550
  %561 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %562 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %561, i32 0, i32 13
  %563 = load i32*, i32** %562, align 8
  %564 = call i32 @free(i32* %563)
  %565 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %566 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %565, i32 0, i32 13
  store i32* null, i32** %566, align 8
  br label %567

567:                                              ; preds = %560, %550
  %568 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %569 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %568, i32 0, i32 10
  %570 = load i64, i64* %569, align 8
  %571 = icmp eq i64 %570, 0
  br i1 %571, label %572, label %583

572:                                              ; preds = %567
  %573 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %574 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %575 = call i64 @FTPGetCWD(%struct.TYPE_25__* %573, i8* %574, i32 512)
  %576 = load i64, i64* @kNoErr, align 8
  %577 = icmp eq i64 %575, %576
  br i1 %577, label %578, label %583

578:                                              ; preds = %572
  %579 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %580 = call i32* @StrDup(i8* %579)
  %581 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %582 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %581, i32 0, i32 13
  store i32* %580, i32** %582, align 8
  br label %583

583:                                              ; preds = %578, %572, %567
  %584 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %585 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %584, i32 0, i32 11
  store i8 65, i8* %585, align 8
  %586 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %587 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %588 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %587, i32 0, i32 5
  %589 = load i8*, i8** %588, align 8
  %590 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %591 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %590, i32 0, i32 2
  %592 = load i8*, i8** %591, align 8
  %593 = call i32 @PrintF(%struct.TYPE_25__* %586, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %589, i8* %592)
  %594 = load i32, i32* %6, align 4
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %610

596:                                              ; preds = %583
  %597 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %598 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %597, i32 0, i32 12
  %599 = load i64, i64* %598, align 8
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %601, label %610

601:                                              ; preds = %596
  %602 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %603 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %602, i32 0, i32 3
  %604 = load i8*, i8** %603, align 8
  %605 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %606 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %605, i32 0, i32 3
  %607 = load i8*, i8** %606, align 8
  %608 = call i32 @strlen(i8* %607)
  %609 = call i32 @memset(i8* %604, i8 signext 42, i32 %608)
  br label %610

610:                                              ; preds = %601, %596, %583
  %611 = load i32, i32* %5, align 4
  %612 = icmp slt i32 %611, 0
  br i1 %612, label %613, label %617

613:                                              ; preds = %610
  %614 = load i32, i32* %5, align 4
  %615 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %616 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %615, i32 0, i32 4
  store i32 %614, i32* %616, align 8
  br label %617

617:                                              ; preds = %613, %610
  %618 = load i32, i32* %5, align 4
  store i32 %618, i32* %2, align 4
  br label %649

619:                                              ; preds = %536, %514, %512, %330, %108
  %620 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %621 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %622 = call i32 @DoneWithResponse(%struct.TYPE_25__* %620, %struct.TYPE_24__* %621)
  br label %623

623:                                              ; preds = %619, %91
  %624 = load i32, i32* %6, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %640

626:                                              ; preds = %623
  %627 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %628 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %627, i32 0, i32 12
  %629 = load i64, i64* %628, align 8
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %631, label %640

631:                                              ; preds = %626
  %632 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %633 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %632, i32 0, i32 3
  %634 = load i8*, i8** %633, align 8
  %635 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %636 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %635, i32 0, i32 3
  %637 = load i8*, i8** %636, align 8
  %638 = call i32 @strlen(i8* %637)
  %639 = call i32 @memset(i8* %634, i8 signext 42, i32 %638)
  br label %640

640:                                              ; preds = %631, %626, %623
  %641 = load i32, i32* %5, align 4
  %642 = icmp slt i32 %641, 0
  br i1 %642, label %643, label %647

643:                                              ; preds = %640
  %644 = load i32, i32* %5, align 4
  %645 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %646 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %645, i32 0, i32 4
  store i32 %644, i32* %646, align 8
  br label %647

647:                                              ; preds = %643, %640
  %648 = load i32, i32* %5, align 4
  store i32 %648, i32* %2, align 4
  br label %649

649:                                              ; preds = %647, %617, %37, %28, %14
  %650 = load i32, i32* %2, align 4
  ret i32 %650
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @FTPInitializeAnonPassword(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_24__* @InitResponse(...) #1

declare dso_local i32 @ReInitResponse(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @RCmd(%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i8*, ...) #1

declare dso_local i32 @NoGetPassphraseProc(%struct.TYPE_25__*, %struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @Error(%struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @FTPGetCWD(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32* @StrDup(i8*) #1

declare dso_local i32 @PrintF(%struct.TYPE_25__*, i8*, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
