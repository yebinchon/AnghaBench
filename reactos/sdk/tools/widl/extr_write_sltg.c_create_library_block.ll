; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_create_library_block.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_create_library_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typelib = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sltg_typelib*, i32*, i32*)* @create_library_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_library_block(%struct.sltg_typelib* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.sltg_typelib*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16*, align 8
  store %struct.sltg_typelib* %0, %struct.sltg_typelib** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  store i32 34, i32* %9, align 4
  %10 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %11 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %17 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call signext i16 @strlen(i32 %19)
  %21 = sext i16 %20 to i32
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %15, %3
  %26 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %27 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %33 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call signext i16 @strlen(i32 %35)
  %37 = sext i16 %36 to i32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %31, %25
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @xmalloc(i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i16*
  store i16* %46, i16** %8, align 8
  %47 = load i16*, i16** %8, align 8
  %48 = getelementptr inbounds i16, i16* %47, i32 1
  store i16* %48, i16** %8, align 8
  store i16 20940, i16* %47, align 2
  %49 = load i16*, i16** %8, align 8
  %50 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %50, i16** %8, align 8
  store i16 3, i16* %49, align 2
  %51 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %52 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = trunc i32 %54 to i16
  %56 = load i16*, i16** %8, align 8
  %57 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %57, i16** %8, align 8
  store i16 %55, i16* %56, align 2
  %58 = load i16*, i16** %8, align 8
  %59 = getelementptr inbounds i16, i16* %58, i32 1
  store i16* %59, i16** %8, align 8
  store i16 -1, i16* %58, align 2
  %60 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %61 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %41
  %66 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %67 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call signext i16 @strlen(i32 %69)
  %71 = load i16*, i16** %8, align 8
  %72 = getelementptr inbounds i16, i16* %71, i32 1
  store i16* %72, i16** %8, align 8
  store i16 %70, i16* %71, align 2
  %73 = load i16*, i16** %8, align 8
  %74 = bitcast i16* %73 to i8*
  %75 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %76 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcpy(i8* %74, i32 %78)
  %80 = load i16*, i16** %8, align 8
  %81 = bitcast i16* %80 to i8*
  %82 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %83 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = call signext i16 @strlen(i32 %85)
  %87 = sext i16 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %81, i64 %88
  %90 = bitcast i8* %89 to i16*
  store i16* %90, i16** %8, align 8
  br label %94

91:                                               ; preds = %41
  %92 = load i16*, i16** %8, align 8
  %93 = getelementptr inbounds i16, i16* %92, i32 1
  store i16* %93, i16** %8, align 8
  store i16 -1, i16* %92, align 2
  br label %94

94:                                               ; preds = %91, %65
  %95 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %96 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %94
  %101 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %102 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = call signext i16 @strlen(i32 %104)
  %106 = load i16*, i16** %8, align 8
  %107 = getelementptr inbounds i16, i16* %106, i32 1
  store i16* %107, i16** %8, align 8
  store i16 %105, i16* %106, align 2
  %108 = load i16*, i16** %8, align 8
  %109 = bitcast i16* %108 to i8*
  %110 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %111 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strcpy(i8* %109, i32 %113)
  %115 = load i16*, i16** %8, align 8
  %116 = bitcast i16* %115 to i8*
  %117 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %118 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = call signext i16 @strlen(i32 %120)
  %122 = sext i16 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %116, i64 %123
  %125 = bitcast i8* %124 to i16*
  store i16* %125, i16** %8, align 8
  br label %129

126:                                              ; preds = %94
  %127 = load i16*, i16** %8, align 8
  %128 = getelementptr inbounds i16, i16* %127, i32 1
  store i16* %128, i16** %8, align 8
  store i16 -1, i16* %127, align 2
  br label %129

129:                                              ; preds = %126, %100
  %130 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %131 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i16*, i16** %8, align 8
  %135 = bitcast i16* %134 to i32*
  store i32 %133, i32* %135, align 4
  %136 = load i16*, i16** %8, align 8
  %137 = getelementptr inbounds i16, i16* %136, i64 2
  store i16* %137, i16** %8, align 8
  %138 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %139 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = trunc i32 %141 to i16
  %143 = load i16*, i16** %8, align 8
  %144 = getelementptr inbounds i16, i16* %143, i32 1
  store i16* %144, i16** %8, align 8
  store i16 %142, i16* %143, align 2
  %145 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %146 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = trunc i32 %148 to i16
  %150 = load i16*, i16** %8, align 8
  %151 = getelementptr inbounds i16, i16* %150, i32 1
  store i16* %151, i16** %8, align 8
  store i16 %149, i16* %150, align 2
  %152 = load i16*, i16** %8, align 8
  %153 = bitcast i16* %152 to i32*
  store i32 0, i32* %153, align 4
  %154 = load i16*, i16** %8, align 8
  %155 = getelementptr inbounds i16, i16* %154, i64 2
  store i16* %155, i16** %8, align 8
  %156 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %157 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = trunc i32 %159 to i16
  %161 = load i16*, i16** %8, align 8
  %162 = getelementptr inbounds i16, i16* %161, i32 1
  store i16* %162, i16** %8, align 8
  store i16 %160, i16* %161, align 2
  %163 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %164 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i16*, i16** %8, align 8
  %168 = bitcast i16* %167 to i32*
  store i32 %166, i32* %168, align 4
  %169 = load i16*, i16** %8, align 8
  %170 = getelementptr inbounds i16, i16* %169, i64 2
  store i16* %170, i16** %8, align 8
  %171 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %172 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i16*, i16** %8, align 8
  %176 = bitcast i16* %175 to i32*
  store i32 %174, i32* %176, align 4
  %177 = load %struct.sltg_typelib*, %struct.sltg_typelib** %4, align 8
  %178 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %177, i32 0, i32 0
  %179 = call i32 @add_index(i32* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %180 = load i32*, i32** %6, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i8*, i8** %7, align 8
  ret i8* %181
}

declare dso_local signext i16 @strlen(i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @add_index(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
