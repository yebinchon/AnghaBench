; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_assoc_one.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_assoc_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_test_struct = type { i8*, i8*, i8*, i8*, i32 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: got perceived 0x%x, expected 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: got flags 0x%x, expected 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: got type %p, expected 0xdeadbeef\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: got type %p, expected '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: got type %s, expected '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assoc_test_struct*)* @test_assoc_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_assoc_one(%struct.assoc_test_struct* %0) #0 {
  %2 = alloca %struct.assoc_test_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.assoc_test_struct* %0, %struct.assoc_test_struct** %2, align 8
  %9 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %10 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @SHStrDupA(i8* %11, i8** %3)
  %13 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %14 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @SHStrDupA(i8* %15, i8** %4)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %6, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %8, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @pAssocGetPerceivedType(i8* %17, i8** %6, i8** %8, i8** null)
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @S_OK, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %25 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi i32 [ %22, %21 ], [ %26, %23 ]
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @expect_hr(i32 %28, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %33 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %31, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %38 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %42 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40, i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %47 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %45, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %52 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %56 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54, i8* %57)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %5, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %6, align 8
  store i8* inttoptr (i64 3735928559 to i8*), i8** %8, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @pAssocGetPerceivedType(i8* %59, i8** %6, i8** %8, i8** %5)
  store i32 %60, i32* %7, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %27
  %64 = load i32, i32* @S_OK, align 4
  br label %69

65:                                               ; preds = %27
  %66 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %67 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %64, %63 ], [ %68, %65 ]
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @expect_hr(i32 %70, i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %75 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = icmp eq i8* %73, %76
  %78 = zext i1 %77 to i32
  %79 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %80 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %84 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %81, i8* %82, i8* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %89 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %87, %90
  %92 = zext i1 %91 to i32
  %93 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %94 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %98 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %95, i8* %96, i8* %99)
  %101 = load i8*, i8** %4, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %120, label %103

103:                                              ; preds = %69
  %104 = load i8*, i8** %5, align 8
  %105 = icmp eq i8* %104, inttoptr (i64 3735928559 to i8*)
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %5, align 8
  %108 = icmp eq i8* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i64 @broken(i32 %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %106, %103
  %113 = phi i1 [ true, %103 ], [ %111, %106 ]
  %114 = zext i1 %113 to i32
  %115 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %116 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %117, i8* %118)
  br label %151

120:                                              ; preds = %69
  %121 = load i8*, i8** %5, align 8
  %122 = icmp eq i8* %121, inttoptr (i64 3735928559 to i8*)
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load i8*, i8** %5, align 8
  %125 = icmp ne i8* %124, inttoptr (i64 3735928559 to i8*)
  %126 = zext i1 %125 to i32
  %127 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %128 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %132 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %129, i8* %130, i8* %133)
  br label %150

135:                                              ; preds = %120
  %136 = load i8*, i8** %4, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = call i64 @StrCmpIW(i8* %136, i8* %137)
  %139 = icmp eq i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %142 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = call i8* @wine_dbgstr_w(i8* %144)
  %146 = load %struct.assoc_test_struct*, %struct.assoc_test_struct** %2, align 8
  %147 = getelementptr inbounds %struct.assoc_test_struct, %struct.assoc_test_struct* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i32, i8*, i8*, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %143, i8* %145, i8* %148)
  br label %150

150:                                              ; preds = %135, %123
  br label %151

151:                                              ; preds = %150, %112
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @CoTaskMemFree(i8* %152)
  %154 = load i8*, i8** %3, align 8
  %155 = call i32 @CoTaskMemFree(i8* %154)
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @CoTaskMemFree(i8* %156)
  ret void
}

declare dso_local i32 @SHStrDupA(i8*, i8**) #1

declare dso_local i32 @pAssocGetPerceivedType(i8*, i8**, i8**, i8**) #1

declare dso_local i32 @expect_hr(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @StrCmpIW(i8*, i8*) #1

declare dso_local i8* @wine_dbgstr_w(i8*) #1

declare dso_local i32 @CoTaskMemFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
