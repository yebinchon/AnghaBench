; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_hash.c_lhash_val_of_name_sys.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_hash.c_lhash_val_of_name_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_MAC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unknown lcid %x, treating as latin-based, please report\0A\00", align 1
@Lookup_16 = common dso_local global i8* null, align 8
@Lookup_32 = common dso_local global i8* null, align 8
@Lookup_48 = common dso_local global i8* null, align 8
@Lookup_64 = common dso_local global i8* null, align 8
@Lookup_80 = common dso_local global i8* null, align 8
@Lookup_112 = common dso_local global i8* null, align 8
@Lookup_128 = common dso_local global i8* null, align 8
@Lookup_144 = common dso_local global i8* null, align 8
@Lookup_160 = common dso_local global i8* null, align 8
@SUBLANG_NORWEGIAN_NYNORSK = common dso_local global i32 0, align 4
@Lookup_176 = common dso_local global i8* null, align 8
@Lookup_208 = common dso_local global i8* null, align 8
@Lookup_224 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lhash_val_of_name_sys(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SYS_MAC, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %9, align 4
  store i32 233495534, i32* %11, align 4
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @LANGIDFROMLCID(i32 %25)
  %27 = call i32 @PRIMARYLANGID(i32 %26)
  switch i32 %27, label %28 [
    i32 220, label %32
    i32 219, label %32
    i32 217, label %32
    i32 216, label %32
    i32 215, label %32
    i32 214, label %32
    i32 213, label %32
    i32 212, label %32
    i32 210, label %32
    i32 209, label %32
    i32 205, label %32
    i32 204, label %32
    i32 203, label %32
    i32 202, label %32
    i32 200, label %32
    i32 199, label %32
    i32 197, label %32
    i32 196, label %32
    i32 194, label %32
    i32 193, label %32
    i32 192, label %32
    i32 190, label %32
    i32 188, label %32
    i32 185, label %32
    i32 183, label %32
    i32 181, label %32
    i32 180, label %32
    i32 179, label %32
    i32 178, label %32
    i32 176, label %32
    i32 175, label %32
    i32 174, label %32
    i32 173, label %32
    i32 172, label %32
    i32 171, label %32
    i32 169, label %32
    i32 168, label %32
    i32 167, label %32
    i32 166, label %32
    i32 163, label %32
    i32 161, label %32
    i32 160, label %32
    i32 159, label %32
    i32 155, label %32
    i32 154, label %32
    i32 153, label %32
    i32 151, label %32
    i32 148, label %32
    i32 147, label %32
    i32 146, label %32
    i32 144, label %32
    i32 143, label %32
    i32 142, label %32
    i32 141, label %32
    i32 137, label %32
    i32 135, label %32
    i32 134, label %32
    i32 132, label %32
    i32 170, label %32
    i32 184, label %32
    i32 156, label %32
    i32 136, label %32
    i32 139, label %32
    i32 129, label %32
    i32 128, label %32
    i32 130, label %32
    i32 211, label %32
    i32 165, label %32
    i32 195, label %32
    i32 145, label %32
    i32 158, label %32
    i32 149, label %32
    i32 140, label %32
    i32 133, label %32
    i32 201, label %32
    i32 131, label %32
    i32 207, label %32
    i32 206, label %34
    i32 187, label %34
    i32 162, label %34
    i32 152, label %34
    i32 150, label %34
    i32 189, label %36
    i32 182, label %38
    i32 177, label %40
    i32 208, label %42
    i32 191, label %44
    i32 186, label %46
    i32 138, label %48
    i32 164, label %50
    i32 218, label %61
    i32 198, label %61
    i32 157, label %63
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %28
  store i32 16, i32* %8, align 4
  %33 = load i8*, i8** @Lookup_16, align 8
  store i8* %33, i8** %13, align 8
  br label %65

34:                                               ; preds = %24, %24, %24, %24, %24
  store i32 32, i32* %8, align 4
  %35 = load i8*, i8** @Lookup_32, align 8
  store i8* %35, i8** %13, align 8
  br label %65

36:                                               ; preds = %24
  store i32 48, i32* %8, align 4
  %37 = load i8*, i8** @Lookup_48, align 8
  store i8* %37, i8** %13, align 8
  br label %65

38:                                               ; preds = %24
  store i32 64, i32* %8, align 4
  %39 = load i8*, i8** @Lookup_64, align 8
  store i8* %39, i8** %13, align 8
  br label %65

40:                                               ; preds = %24
  store i32 80, i32* %8, align 4
  %41 = load i8*, i8** @Lookup_80, align 8
  store i8* %41, i8** %13, align 8
  br label %65

42:                                               ; preds = %24
  store i32 112, i32* %8, align 4
  %43 = load i8*, i8** @Lookup_112, align 8
  store i8* %43, i8** %13, align 8
  br label %65

44:                                               ; preds = %24
  store i32 128, i32* %8, align 4
  %45 = load i8*, i8** @Lookup_128, align 8
  store i8* %45, i8** %13, align 8
  br label %65

46:                                               ; preds = %24
  store i32 144, i32* %8, align 4
  %47 = load i8*, i8** @Lookup_144, align 8
  store i8* %47, i8** %13, align 8
  br label %65

48:                                               ; preds = %24
  store i32 160, i32* %8, align 4
  %49 = load i8*, i8** @Lookup_160, align 8
  store i8* %49, i8** %13, align 8
  br label %65

50:                                               ; preds = %24
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @LANGIDFROMLCID(i32 %51)
  %53 = call i32 @SUBLANGID(i32 %52)
  %54 = load i32, i32* @SUBLANG_NORWEGIAN_NYNORSK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  store i32 176, i32* %8, align 4
  %57 = load i8*, i8** @Lookup_176, align 8
  store i8* %57, i8** %13, align 8
  br label %60

58:                                               ; preds = %50
  store i32 16, i32* %8, align 4
  %59 = load i8*, i8** @Lookup_16, align 8
  store i8* %59, i8** %13, align 8
  br label %60

60:                                               ; preds = %58, %56
  br label %65

61:                                               ; preds = %24, %24
  store i32 208, i32* %8, align 4
  %62 = load i8*, i8** @Lookup_208, align 8
  store i8* %62, i8** %13, align 8
  br label %65

63:                                               ; preds = %24
  store i32 224, i32* %8, align 4
  %64 = load i8*, i8** @Lookup_224, align 8
  store i8* %64, i8** %13, align 8
  br label %65

65:                                               ; preds = %63, %61, %60, %48, %46, %44, %42, %40, %38, %36, %34, %32
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %66, %67
  %69 = shl i32 %68, 16
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %94, %65
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 37, %75
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %80, 127
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i8*, i8** %12, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %88, 128
  br label %94

90:                                               ; preds = %82, %74
  %91 = load i8*, i8** %12, align 8
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi i32 [ %89, %85 ], [ %93, %90 ]
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %77, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %76, %99
  store i32 %100, i32* %11, align 4
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %12, align 8
  br label %70

103:                                              ; preds = %70
  %104 = load i32, i32* %11, align 4
  %105 = srem i32 %104, 65599
  %106 = and i32 %105, 65535
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @PRIMARYLANGID(i32) #1

declare dso_local i32 @LANGIDFROMLCID(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @SUBLANGID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
