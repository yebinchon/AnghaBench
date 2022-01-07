; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/credui/extr_credui.c_test_CredUIPromptForCredentials.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/credui/extr_credui.c_test_CredUIPromptForCredentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32*, i32*, i32* }

@test_CredUIPromptForCredentials.wszServerName = internal constant [9 x i8] c"WineTest\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [104 x i8] c"CredUIConfirmCredentials should have returned ERROR_INVALID_PARAMETER or ERROR_NOT_FOUND instead of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"CredUIConfirmCredentials should have returned ERROR_NOT_FOUND instead of %d\0A\00", align 1
@CREDUI_FLAGS_ALWAYS_SHOW_UI = common dso_local global i32 0, align 4
@ERROR_INVALID_FLAGS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"CredUIPromptForCredentials should have returned ERROR_INVALID_FLAGS instead of %d\0A\00", align 1
@CREDUI_FLAGS_GENERIC_CREDENTIALS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"CredUIPromptForCredentials should have returned ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX = common dso_local global i32 0, align 4
@winetest_interactive = common dso_local global i64 0, align 8
@test_CredUIPromptForCredentials.wszCaption1 = internal constant [33 x i8] c"CREDUI_FLAGS_EXPECT_CONFIRMATION\00", align 16
@test_CredUIPromptForCredentials.wszCaption2 = internal constant [65 x i8] c"CREDUI_FLAGS_INCORRECT_PASSWORD|CREDUI_FLAGS_EXPECT_CONFIRMATION\00", align 16
@test_CredUIPromptForCredentials.wszCaption3 = internal constant [61 x i8] c"CREDUI_FLAGS_DO_NOT_PERSIST|CREDUI_FLAGS_EXPECT_CONFIRMATION\00", align 16
@test_CredUIPromptForCredentials.wszCaption4 = internal constant [54 x i8] c"CREDUI_FLAGS_PERSIST|CREDUI_FLAGS_EXPECT_CONFIRMATION\00", align 16
@CREDUI_FLAGS_EXPECT_CONFIRMATION = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_CANCELLED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"CredUIPromptForCredentials failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"CredUIConfirmCredentials failed with error %d\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@CREDUI_FLAGS_INCORRECT_PASSWORD = common dso_local global i32 0, align 4
@CREDUI_FLAGS_DO_NOT_PERSIST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"save flag should have been untouched\0A\00", align 1
@CREDUI_FLAGS_PERSIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CredUIPromptForCredentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CredUIPromptForCredentials() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 40, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  store i32* null, i32** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i64 @CredUIConfirmCredentialsW(i8* null, i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @ERROR_NOT_FOUND, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %0
  %21 = phi i1 [ true, %0 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i64 @CredUIConfirmCredentialsW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32 %25)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @ERROR_NOT_FOUND, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %33, align 16
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %34, align 16
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %37 = call i32 @ARRAY_SIZE(i8* %36)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(i8* %39)
  %41 = load i32, i32* @CREDUI_FLAGS_ALWAYS_SHOW_UI, align 4
  %42 = call i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__* null, i8* null, i32* null, i32 0, i8* %35, i32 %37, i8* %38, i32 %40, i32* null, i32 %41)
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @ERROR_INVALID_FLAGS, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %1, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(i8* %50)
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %54 = call i32 @ARRAY_SIZE(i8* %53)
  %55 = load i32, i32* @CREDUI_FLAGS_ALWAYS_SHOW_UI, align 4
  %56 = load i32, i32* @CREDUI_FLAGS_GENERIC_CREDENTIALS, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__* null, i8* null, i32* null, i32 0, i8* %49, i32 %51, i8* %52, i32 %54, i32* null, i32 %57)
  store i64 %58, i64* %1, align 8
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %1, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %67 = call i32 @ARRAY_SIZE(i8* %66)
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %70 = call i32 @ARRAY_SIZE(i8* %69)
  %71 = load i32, i32* @CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX, align 4
  %72 = call i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32* null, i32 0, i8* %65, i32 %67, i8* %68, i32 %70, i32* null, i32 %71)
  store i64 %72, i64* %1, align 8
  %73 = load i64, i64* %1, align 8
  %74 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %1, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* @winetest_interactive, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %254

81:                                               ; preds = %20
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %84 = call i32 @ARRAY_SIZE(i8* %83)
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %87 = call i32 @ARRAY_SIZE(i8* %86)
  %88 = load i32, i32* @CREDUI_FLAGS_EXPECT_CONFIRMATION, align 4
  %89 = call i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32* null, i32 0, i8* %82, i32 %84, i8* %85, i32 %87, i32* %5, i32 %88)
  store i64 %89, i64* %1, align 8
  %90 = load i64, i64* %1, align 8
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %81
  %94 = load i64, i64* %1, align 8
  %95 = load i64, i64* @ERROR_CANCELLED, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %93, %81
  %98 = phi i1 [ true, %81 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %1, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %100)
  %102 = load i64, i64* %1, align 8
  %103 = load i64, i64* @ERROR_SUCCESS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i64 @CredUIConfirmCredentialsW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32 %106)
  store i64 %107, i64* %1, align 8
  %108 = load i64, i64* %1, align 8
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %1, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %112)
  br label %114

114:                                              ; preds = %105, %97
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @test_CredUIPromptForCredentials.wszCaption1, i64 0, i64 0), i8** %115, align 8
  %116 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %119 = call i32 @ARRAY_SIZE(i8* %118)
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %122 = call i32 @ARRAY_SIZE(i8* %121)
  %123 = load i32, i32* @CREDUI_FLAGS_EXPECT_CONFIRMATION, align 4
  %124 = call i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32* null, i32 %116, i8* %117, i32 %119, i8* %120, i32 %122, i32* %5, i32 %123)
  store i64 %124, i64* %1, align 8
  %125 = load i64, i64* %1, align 8
  %126 = load i64, i64* @ERROR_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %114
  %129 = load i64, i64* %1, align 8
  %130 = load i64, i64* @ERROR_CANCELLED, align 8
  %131 = icmp eq i64 %129, %130
  br label %132

132:                                              ; preds = %128, %114
  %133 = phi i1 [ true, %114 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  %135 = load i64, i64* %1, align 8
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %135)
  %137 = load i64, i64* %1, align 8
  %138 = load i64, i64* @ERROR_SUCCESS, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %132
  %141 = load i32, i32* @FALSE, align 4
  %142 = call i64 @CredUIConfirmCredentialsW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32 %141)
  store i64 %142, i64* %1, align 8
  %143 = load i64, i64* %1, align 8
  %144 = load i64, i64* @ERROR_SUCCESS, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %1, align 8
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %147)
  br label %149

149:                                              ; preds = %140, %132
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @test_CredUIPromptForCredentials.wszCaption2, i64 0, i64 0), i8** %150, align 8
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %153 = call i32 @ARRAY_SIZE(i8* %152)
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %156 = call i32 @ARRAY_SIZE(i8* %155)
  %157 = load i32, i32* @CREDUI_FLAGS_INCORRECT_PASSWORD, align 4
  %158 = load i32, i32* @CREDUI_FLAGS_EXPECT_CONFIRMATION, align 4
  %159 = or i32 %157, %158
  %160 = call i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32* null, i32 0, i8* %151, i32 %153, i8* %154, i32 %156, i32* null, i32 %159)
  store i64 %160, i64* %1, align 8
  %161 = load i64, i64* %1, align 8
  %162 = load i64, i64* @ERROR_SUCCESS, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %149
  %165 = load i64, i64* %1, align 8
  %166 = load i64, i64* @ERROR_CANCELLED, align 8
  %167 = icmp eq i64 %165, %166
  br label %168

168:                                              ; preds = %164, %149
  %169 = phi i1 [ true, %149 ], [ %167, %164 ]
  %170 = zext i1 %169 to i32
  %171 = load i64, i64* %1, align 8
  %172 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %171)
  %173 = load i64, i64* %1, align 8
  %174 = load i64, i64* @ERROR_SUCCESS, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %168
  %177 = load i32, i32* @FALSE, align 4
  %178 = call i64 @CredUIConfirmCredentialsW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32 %177)
  store i64 %178, i64* %1, align 8
  %179 = load i64, i64* %1, align 8
  %180 = load i64, i64* @ERROR_SUCCESS, align 8
  %181 = icmp eq i64 %179, %180
  %182 = zext i1 %181 to i32
  %183 = load i64, i64* %1, align 8
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %183)
  br label %185

185:                                              ; preds = %176, %168
  %186 = load i32, i32* @TRUE, align 4
  store i32 %186, i32* %5, align 4
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @test_CredUIPromptForCredentials.wszCaption3, i64 0, i64 0), i8** %187, align 8
  %188 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %190 = call i32 @ARRAY_SIZE(i8* %189)
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %193 = call i32 @ARRAY_SIZE(i8* %192)
  %194 = load i32, i32* @CREDUI_FLAGS_DO_NOT_PERSIST, align 4
  %195 = load i32, i32* @CREDUI_FLAGS_EXPECT_CONFIRMATION, align 4
  %196 = or i32 %194, %195
  %197 = call i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32* null, i32 0, i8* %188, i32 %190, i8* %191, i32 %193, i32* %5, i32 %196)
  store i64 %197, i64* %1, align 8
  %198 = load i64, i64* %1, align 8
  %199 = load i64, i64* @ERROR_SUCCESS, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %205, label %201

201:                                              ; preds = %185
  %202 = load i64, i64* %1, align 8
  %203 = load i64, i64* @ERROR_CANCELLED, align 8
  %204 = icmp eq i64 %202, %203
  br label %205

205:                                              ; preds = %201, %185
  %206 = phi i1 [ true, %185 ], [ %204, %201 ]
  %207 = zext i1 %206 to i32
  %208 = load i64, i64* %1, align 8
  %209 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %208)
  %210 = load i32, i32* %5, align 4
  %211 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %5, align 4
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @test_CredUIPromptForCredentials.wszCaption4, i64 0, i64 0), i8** %213, align 8
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %216 = call i32 @ARRAY_SIZE(i8* %215)
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %218 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %219 = call i32 @ARRAY_SIZE(i8* %218)
  %220 = load i32, i32* @CREDUI_FLAGS_PERSIST, align 4
  %221 = load i32, i32* @CREDUI_FLAGS_EXPECT_CONFIRMATION, align 4
  %222 = or i32 %220, %221
  %223 = call i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32* null, i32 0, i8* %214, i32 %216, i8* %217, i32 %219, i32* %5, i32 %222)
  store i64 %223, i64* %1, align 8
  %224 = load i64, i64* %1, align 8
  %225 = load i64, i64* @ERROR_SUCCESS, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %205
  %228 = load i64, i64* %1, align 8
  %229 = load i64, i64* @ERROR_CANCELLED, align 8
  %230 = icmp eq i64 %228, %229
  br label %231

231:                                              ; preds = %227, %205
  %232 = phi i1 [ true, %205 ], [ %230, %227 ]
  %233 = zext i1 %232 to i32
  %234 = load i64, i64* %1, align 8
  %235 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %234)
  %236 = load i32, i32* %5, align 4
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %241 = load i64, i64* %1, align 8
  %242 = load i64, i64* @ERROR_SUCCESS, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %231
  %245 = load i32, i32* @FALSE, align 4
  %246 = call i64 @CredUIConfirmCredentialsW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_CredUIPromptForCredentials.wszServerName, i64 0, i64 0), i32 %245)
  store i64 %246, i64* %1, align 8
  %247 = load i64, i64* %1, align 8
  %248 = load i64, i64* @ERROR_SUCCESS, align 8
  %249 = icmp eq i64 %247, %248
  %250 = zext i1 %249 to i32
  %251 = load i64, i64* %1, align 8
  %252 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %251)
  br label %253

253:                                              ; preds = %244, %231
  br label %254

254:                                              ; preds = %253, %20
  ret void
}

declare dso_local i64 @CredUIConfirmCredentialsW(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @CredUIPromptForCredentialsW(%struct.TYPE_3__*, i8*, i32*, i32, i8*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
