; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/schannel/extr_main.c_testInitialize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/schannel/extr_main.c_testInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"status: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cTables: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pTables: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"pTables: %p, pTables2: %p\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Version: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"pUserTables: %p\0A\00", align 1
@SECPKG_INTERFACE_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"cUserTables: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"pUserTables: %p, pUserTables2: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testInitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testInitialize() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = call i32 @pSpLsaModeInitialize(i32 0, i32* %7, i32** %4, i32* %5)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @STATUS_SUCCESS, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %8, align 4
  %15 = call i32 (i32, i8*, i32, ...) @ok(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %24, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i64 @broken(i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %18, %0
  %25 = phi i1 [ true, %0 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %4, align 8
  %33 = ptrtoint i32* %32 to i32
  %34 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = call i32 @pSpLsaModeInitialize(i32 65536, i32* %7, i32** %3, i32* %5)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @STATUS_SUCCESS, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %50, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i64 @broken(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %44, %24
  %51 = phi i1 [ true, %24 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32, i8*, i32, ...) @ok(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = load i32*, i32** %3, align 8
  %59 = ptrtoint i32* %58 to i32
  %60 = call i32 (i32, i8*, i32, ...) @ok(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = icmp eq i32* %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32*, i32** %3, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32* %67)
  %69 = call i32 @pSpLsaModeInitialize(i32 144470, i32* %7, i32** %3, i32* %5)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @STATUS_SUCCESS, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i32, i8*, i32, ...) @ok(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %84, label %78

78:                                               ; preds = %50
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = call i64 @broken(i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %78, %50
  %85 = phi i1 [ true, %50 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = load i32*, i32** %3, align 8
  %93 = ptrtoint i32* %92 to i32
  %94 = call i32 (i32, i8*, i32, ...) @ok(i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = icmp eq i32* %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32*, i32** %3, align 8
  %100 = ptrtoint i32* %99 to i32
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 (i32, i8*, i32, ...) @ok(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32* %101)
  store i32 57005, i32* %7, align 4
  store i32 57005, i32* %6, align 4
  store i32* null, i32** %1, align 8
  %103 = call i32 @pSpUserModeInitialize(i32 0, i32* %7, i32** %1, i32* %6)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i32, i8*, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 57005
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 57005
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %6, align 4
  %119 = call i32 (i32, i8*, i32, ...) @ok(i32 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = icmp eq i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = load i32*, i32** %1, align 8
  %124 = ptrtoint i32* %123 to i32
  %125 = call i32 (i32, i8*, i32, ...) @ok(i32 %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = call i32 @pSpUserModeInitialize(i32 131072, i32* %7, i32** %1, i32* %6)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (i32, i8*, i32, ...) @ok(i32 %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 57005
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i32, i8*, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 57005
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %6, align 4
  %142 = call i32 (i32, i8*, i32, ...) @ok(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = load i32*, i32** %1, align 8
  %144 = icmp eq i32* %143, null
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %1, align 8
  %147 = ptrtoint i32* %146 to i32
  %148 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @SECPKG_INTERFACE_VERSION, align 4
  %150 = call i32 @pSpUserModeInitialize(i32 %149, i32* %7, i32** %1, i32* %6)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @STATUS_SUCCESS, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %8, align 4
  %156 = call i32 (i32, i8*, i32, ...) @ok(i32 %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @SECPKG_INTERFACE_VERSION, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %7, align 4
  %162 = call i32 (i32, i8*, i32, ...) @ok(i32 %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %6, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %171, label %165

165:                                              ; preds = %84
  %166 = load i32, i32* %6, align 4
  %167 = icmp eq i32 %166, 4
  %168 = zext i1 %167 to i32
  %169 = call i64 @broken(i32 %168)
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %165, %84
  %172 = phi i1 [ true, %84 ], [ %170, %165 ]
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %6, align 4
  %175 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  %176 = load i32*, i32** %1, align 8
  %177 = icmp ne i32* %176, null
  %178 = zext i1 %177 to i32
  %179 = load i32*, i32** %1, align 8
  %180 = ptrtoint i32* %179 to i32
  %181 = call i32 (i32, i8*, i32, ...) @ok(i32 %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @SECPKG_INTERFACE_VERSION, align 4
  %183 = call i32 @pSpUserModeInitialize(i32 %182, i32* %7, i32** %2, i32* %5)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @STATUS_SUCCESS, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (i32, i8*, i32, ...) @ok(i32 %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %188)
  %190 = load i32*, i32** %1, align 8
  %191 = load i32*, i32** %2, align 8
  %192 = icmp eq i32* %190, %191
  %193 = zext i1 %192 to i32
  %194 = load i32*, i32** %1, align 8
  %195 = ptrtoint i32* %194 to i32
  %196 = load i32*, i32** %2, align 8
  %197 = call i32 (i32, i8*, i32, ...) @ok(i32 %193, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %195, i32* %196)
  ret void
}

declare dso_local i32 @pSpLsaModeInitialize(i32, i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @pSpUserModeInitialize(i32, i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
