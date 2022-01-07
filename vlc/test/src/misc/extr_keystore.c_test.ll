; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_keystore.c_test.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_keystore.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i8*, i8*, i32, i8*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.dialog_ctx = type { i32, %struct.testcase* }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [44 x i8] c"test(%u): url %s%s%s%s (%sexpected: %s:%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" (realm: \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@cancel_cb = common dso_local global i32 0, align 4
@display_login_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"test-user\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"test-pwd\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"test authentication\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"this a test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.testcase*)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i32* %0, i32 %1, %struct.testcase* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.testcase*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca %struct.dialog_ctx, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.testcase* %2, %struct.testcase** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.testcase*, %struct.testcase** %6, align 8
  %18 = getelementptr inbounds %struct.testcase, %struct.testcase* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.testcase*, %struct.testcase** %6, align 8
  %21 = getelementptr inbounds %struct.testcase, %struct.testcase* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = load %struct.testcase*, %struct.testcase** %6, align 8
  %27 = getelementptr inbounds %struct.testcase, %struct.testcase* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.testcase*, %struct.testcase** %6, align 8
  %32 = getelementptr inbounds %struct.testcase, %struct.testcase* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %34 ]
  %37 = load %struct.testcase*, %struct.testcase** %6, align 8
  %38 = getelementptr inbounds %struct.testcase, %struct.testcase* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load %struct.testcase*, %struct.testcase** %6, align 8
  %44 = getelementptr inbounds %struct.testcase, %struct.testcase* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %49 = load %struct.testcase*, %struct.testcase** %6, align 8
  %50 = getelementptr inbounds %struct.testcase, %struct.testcase* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.testcase*, %struct.testcase** %6, align 8
  %54 = getelementptr inbounds %struct.testcase, %struct.testcase* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %19, i8* %25, i8* %36, i8* %42, i8* %48, i32 %52, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %59 = load i32, i32* @cancel_cb, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %61 = load i32, i32* @display_login_cb, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds %struct.dialog_ctx, %struct.dialog_ctx* %8, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.dialog_ctx, %struct.dialog_ctx* %8, i32 0, i32 1
  %64 = load %struct.testcase*, %struct.testcase** %6, align 8
  store %struct.testcase* %64, %struct.testcase** %63, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @vlc_dialog_provider_set_callbacks(i32* %65, %struct.TYPE_12__* %7, %struct.dialog_ctx* %8)
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %67 = load %struct.testcase*, %struct.testcase** %6, align 8
  %68 = getelementptr inbounds %struct.testcase, %struct.testcase* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %35
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.testcase*, %struct.testcase** %6, align 8
  %76 = getelementptr inbounds %struct.testcase, %struct.testcase* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @var_SetString(i32* %73, i8* %74, i32* %78)
  br label %80

80:                                               ; preds = %72, %35
  %81 = load %struct.testcase*, %struct.testcase** %6, align 8
  %82 = getelementptr inbounds %struct.testcase, %struct.testcase* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.testcase*, %struct.testcase** %6, align 8
  %90 = getelementptr inbounds %struct.testcase, %struct.testcase* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @var_SetString(i32* %87, i8* %88, i32* %92)
  br label %94

94:                                               ; preds = %86, %80
  %95 = load %struct.testcase*, %struct.testcase** %6, align 8
  %96 = getelementptr inbounds %struct.testcase, %struct.testcase* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @vlc_UrlParse(i32* %11, i8* %97)
  %99 = call i32 @vlc_credential_init(%struct.TYPE_13__* %12, i32* %11)
  %100 = load %struct.testcase*, %struct.testcase** %6, align 8
  %101 = getelementptr inbounds %struct.testcase, %struct.testcase* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load %struct.testcase*, %struct.testcase** %6, align 8
  %105 = getelementptr inbounds %struct.testcase, %struct.testcase* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i8* %106, i8** %107, align 8
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %185, %94
  %109 = load i32*, i32** %4, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = call i64 @vlc_credential_get(%struct.TYPE_13__* %12, i32* %109, i8* %110, i8* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %186

114:                                              ; preds = %108
  %115 = load %struct.testcase*, %struct.testcase** %6, align 8
  %116 = getelementptr inbounds %struct.testcase, %struct.testcase* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.testcase*, %struct.testcase** %6, align 8
  %128 = getelementptr inbounds %struct.testcase, %struct.testcase* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @strcmp(i8* %126, i32 %130)
  %132 = icmp eq i64 %131, 0
  br label %133

133:                                              ; preds = %124, %120
  %134 = phi i1 [ false, %120 ], [ %132, %124 ]
  br label %135

135:                                              ; preds = %133, %114
  %136 = phi i1 [ true, %114 ], [ %134, %133 ]
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %14, align 4
  %138 = load %struct.testcase*, %struct.testcase** %6, align 8
  %139 = getelementptr inbounds %struct.testcase, %struct.testcase* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.testcase*, %struct.testcase** %6, align 8
  %151 = getelementptr inbounds %struct.testcase, %struct.testcase* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @strcmp(i8* %149, i32 %153)
  %155 = icmp eq i64 %154, 0
  br label %156

156:                                              ; preds = %147, %143
  %157 = phi i1 [ false, %143 ], [ %155, %147 ]
  br label %158

158:                                              ; preds = %156, %135
  %159 = phi i1 [ true, %135 ], [ %157, %156 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %158
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.testcase*, %struct.testcase** %6, align 8
  %170 = getelementptr inbounds %struct.testcase, %struct.testcase* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @strcmp(i8* %168, i32 %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.testcase*, %struct.testcase** %6, align 8
  %179 = getelementptr inbounds %struct.testcase, %struct.testcase* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @strcmp(i8* %177, i32 %181)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  store i32 1, i32* %13, align 4
  br label %186

185:                                              ; preds = %175, %166, %163, %158
  br label %108

186:                                              ; preds = %184, %108
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.testcase*, %struct.testcase** %6, align 8
  %189 = getelementptr inbounds %struct.testcase, %struct.testcase* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %187, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @vlc_credential_store(%struct.TYPE_13__* %12, i32* %194)
  %196 = call i32 @vlc_UrlClean(i32* %11)
  %197 = call i32 @vlc_credential_clean(%struct.TYPE_13__* %12)
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @vlc_dialog_provider_set_callbacks(i32* %198, %struct.TYPE_12__* null, %struct.dialog_ctx* null)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @vlc_dialog_provider_set_callbacks(i32*, %struct.TYPE_12__*, %struct.dialog_ctx*) #1

declare dso_local i32 @var_SetString(i32*, i8*, i32*) #1

declare dso_local i32 @vlc_UrlParse(i32*, i8*) #1

declare dso_local i32 @vlc_credential_init(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @vlc_credential_get(%struct.TYPE_13__*, i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_credential_store(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @vlc_UrlClean(i32*) #1

declare dso_local i32 @vlc_credential_clean(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
