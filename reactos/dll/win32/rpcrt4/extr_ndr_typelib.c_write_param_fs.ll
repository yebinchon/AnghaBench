; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_param_fs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_write_param_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PARAMFLAG_FIN = common dso_local global i32 0, align 4
@PARAMFLAG_FOUT = common dso_local global i32 0, align 4
@IsIn = common dso_local global i16 0, align 2
@IsOut = common dso_local global i16 0, align 2
@IsReturn = common dso_local global i16 0, align 2
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*, i8*, i64*, %struct.TYPE_5__*, i64, i16*)* @write_param_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_param_fs(i32* %0, i8* %1, i64* %2, i8* %3, i64* %4, %struct.TYPE_5__* %5, i64 %6, i16* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i8, align 1
  %25 = alloca i16, align 2
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %14, align 8
  store i64 %6, i64* %15, align 8
  store i16* %7, i16** %16, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @PARAMFLAG_FIN, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @PARAMFLAG_FOUT, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %19, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32* %39, i32** %20, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = call zeroext i16 @get_stack_size(i32* %40, i32* %41)
  store i16 %42, i16* %23, align 2
  store i64 0, i64* %26, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @get_param_info(i32* %43, i32* %44, i32 %45, i32 %46, i16* %22, i16* %25, i8* %24, i32** %21)
  store i32 %47, i32* %27, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %8
  %51 = load i16, i16* @IsIn, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* %25, align 2
  %54 = zext i16 %53 to i32
  %55 = or i32 %54, %52
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %25, align 2
  br label %57

57:                                               ; preds = %50, %8
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i16, i16* @IsOut, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* %25, align 2
  %64 = zext i16 %63 to i32
  %65 = or i32 %64, %62
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %25, align 2
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i64, i64* %15, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i16, i16* @IsOut, align 2
  %72 = zext i16 %71 to i32
  %73 = load i16, i16* @IsReturn, align 2
  %74 = zext i16 %73 to i32
  %75 = or i32 %72, %74
  %76 = load i16, i16* %25, align 2
  %77 = zext i16 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %25, align 2
  br label %80

80:                                               ; preds = %70, %67
  %81 = load i16, i16* %22, align 2
  %82 = zext i16 %81 to i32
  %83 = add nsw i32 %82, 7
  %84 = sdiv i32 %83, 8
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %22, align 2
  %86 = load i16, i16* %22, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp sge i32 %87, 8
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i16 0, i16* %22, align 2
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i16, i16* %22, align 2
  %92 = zext i16 %91 to i32
  %93 = shl i32 %92, 13
  %94 = load i16, i16* %25, align 2
  %95 = zext i16 %94 to i32
  %96 = or i32 %95, %93
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %25, align 2
  %98 = load i8, i8* %24, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %90
  %101 = load i32*, i32** %9, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = load i32*, i32** %21, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i16, i16* %22, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i64 @write_type_tfs(i32* %101, i8* %102, i64* %103, i32* %104, i32 %105, i32 %109)
  store i64 %110, i64* %26, align 8
  br label %111

111:                                              ; preds = %100, %90
  %112 = load i32, i32* %27, align 4
  %113 = call i64 @SUCCEEDED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %111
  %116 = load i8*, i8** %12, align 8
  %117 = load i64*, i64** %13, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i16, i16* %25, align 2
  %120 = trunc i16 %119 to i8
  %121 = call i32 @WRITE_SHORT(i8* %116, i64 %118, i8 zeroext %120)
  %122 = load i8*, i8** %12, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i16*, i16** %16, align 8
  %126 = load i16, i16* %125, align 2
  %127 = trunc i16 %126 to i8
  %128 = call i32 @WRITE_SHORT(i8* %122, i64 %124, i8 zeroext %127)
  %129 = load i8*, i8** %12, align 8
  %130 = load i64*, i64** %13, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i8, i8* %24, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %115
  %136 = load i8, i8* %24, align 1
  %137 = zext i8 %136 to i64
  br label %140

138:                                              ; preds = %115
  %139 = load i64, i64* %26, align 8
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi i64 [ %137, %135 ], [ %139, %138 ]
  %142 = trunc i64 %141 to i8
  %143 = call i32 @WRITE_SHORT(i8* %129, i64 %131, i8 zeroext %142)
  %144 = load i16, i16* %23, align 2
  %145 = zext i16 %144 to i32
  %146 = load i16*, i16** %16, align 8
  %147 = load i16, i16* %146, align 2
  %148 = zext i16 %147 to i32
  %149 = add nsw i32 %148, %145
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %146, align 2
  br label %151

151:                                              ; preds = %140, %111
  %152 = load i32, i32* %27, align 4
  ret i32 %152
}

declare dso_local zeroext i16 @get_stack_size(i32*, i32*) #1

declare dso_local i32 @get_param_info(i32*, i32*, i32, i32, i16*, i16*, i8*, i32**) #1

declare dso_local i64 @write_type_tfs(i32*, i8*, i64*, i32*, i32, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @WRITE_SHORT(i8*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
