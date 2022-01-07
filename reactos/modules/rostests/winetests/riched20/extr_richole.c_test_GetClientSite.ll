; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_GetClientSite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_GetClientSite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"IRichEditOle_QueryInterface: 0x%08x\0A\00", align 1
@IID_IRichEditOle = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"IOleClientSite_QueryInterface: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@IID_IOleClientSite = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"IOleClientSite_QueryInterface: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Should not return a new pointer.\0A\00", align 1
@IID_IOleWindow = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"got wrong ref count.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"IOleWindow_QueryInterface: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"got wrong pointer\0A\00", align 1
@IID_IOleInPlaceSite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetClientSite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetClientSite() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %4, i32* null)
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @IRichEditOle_GetClientSite(i32* %16, i32** %5)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %12, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @EXPECT_REF(i32* %24, i32 1)
  %26 = load i32*, i32** %5, align 8
  %27 = bitcast i32** %3 to i8**
  %28 = call i64 @IOleClientSite_QueryInterface(i32* %26, i32* @IID_IRichEditOle, i8** %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @E_NOINTERFACE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %12, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @IRichEditOle_GetClientSite(i32* %35, i32** %6)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %12, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %47, i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @IOleClientSite_Release(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = bitcast i32** %6 to i8**
  %54 = call i64 @IOleClientSite_QueryInterface(i32* %52, i32* @IID_IOleClientSite, i8** %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %12, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = icmp eq i32* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @EXPECT_REF(i32* %66, i32 2)
  %68 = load i32*, i32** %5, align 8
  %69 = bitcast i32** %8 to i8**
  %70 = call i64 @IOleClientSite_QueryInterface(i32* %68, i32* @IID_IOleWindow, i8** %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %12, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @get_refcount(i32* %77)
  store i64 %78, i64* %13, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @get_refcount(i32* %79)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32*, i32** %5, align 8
  %87 = bitcast i32** %9 to i8**
  %88 = call i64 @IOleClientSite_QueryInterface(i32* %86, i32* @IID_IOleWindow, i8** %87)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %12, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = icmp eq i32* %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32*, i32** %5, align 8
  %101 = call i64 @get_refcount(i32* %100)
  store i64 %101, i64* %13, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i64 @get_refcount(i32* %102)
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32*, i32** %8, align 8
  %110 = bitcast i32** %7 to i8**
  %111 = call i64 @IOleWindow_QueryInterface(i32* %109, i32* @IID_IOleClientSite, i8** %110)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @S_OK, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %12, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = icmp eq i32* %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i32*, i32** %5, align 8
  %124 = bitcast i32** %10 to i8**
  %125 = call i64 @IOleClientSite_QueryInterface(i32* %123, i32* @IID_IOleInPlaceSite, i8** %124)
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @S_OK, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %12, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  %132 = load i32*, i32** %10, align 8
  %133 = call i64 @get_refcount(i32* %132)
  store i64 %133, i64* %13, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = call i64 @get_refcount(i32* %134)
  store i64 %135, i64* %14, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %14, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32*, i32** %5, align 8
  %142 = bitcast i32** %11 to i8**
  %143 = call i64 @IOleClientSite_QueryInterface(i32* %141, i32* @IID_IOleInPlaceSite, i8** %142)
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @S_OK, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %12, align 8
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %148)
  %150 = load i32*, i32** %10, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = icmp eq i32* %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @IOleInPlaceSite_Release(i32* %155)
  %157 = load i32*, i32** %8, align 8
  %158 = bitcast i32** %11 to i8**
  %159 = call i64 @IOleWindow_QueryInterface(i32* %157, i32* @IID_IOleInPlaceSite, i8** %158)
  store i64 %159, i64* %12, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* @S_OK, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i64, i64* %12, align 8
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %164)
  %166 = load i32*, i32** %11, align 8
  %167 = call i64 @get_refcount(i32* %166)
  store i64 %167, i64* %13, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = call i64 @get_refcount(i32* %168)
  store i64 %169, i64* %14, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %14, align 8
  %172 = icmp eq i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @IOleInPlaceSite_Release(i32* %175)
  %177 = load i32*, i32** %10, align 8
  %178 = call i32 @IOleInPlaceSite_Release(i32* %177)
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @IOleWindow_Release(i32* %179)
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @IOleWindow_Release(i32* %181)
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @IOleClientSite_Release(i32* %183)
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @IOleClientSite_Release(i32* %185)
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @IOleClientSite_Release(i32* %187)
  %189 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %4, i32* null)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i64 @IRichEditOle_GetClientSite(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @EXPECT_REF(i32*, i32) #1

declare dso_local i64 @IOleClientSite_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IOleClientSite_Release(i32*) #1

declare dso_local i64 @get_refcount(i32*) #1

declare dso_local i64 @IOleWindow_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IOleInPlaceSite_Release(i32*) #1

declare dso_local i32 @IOleWindow_Release(i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
