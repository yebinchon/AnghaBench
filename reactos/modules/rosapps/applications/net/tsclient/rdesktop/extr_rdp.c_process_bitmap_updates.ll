; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_bitmap_updates.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_process_bitmap_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"BITMAP_UPDATE(l=%d,t=%d,r=%d,b=%d,w=%d,h=%d,Bpp=%d,cmp=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to decompress data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_bitmap_updates(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @in_uint16_le(i32 %22, i32 %23)
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %152, %2
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %155

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @in_uint16_le(i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @in_uint16_le(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @in_uint16_le(i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @in_uint16_le(i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @in_uint16_le(i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @in_uint16_le(i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @in_uint16_le(i32 %48, i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 7
  %53 = sdiv i32 %52, 8
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @in_uint16_le(i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @in_uint16_le(i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %60, %61
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @DEBUG(i8* %77)
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %29
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** %20, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %15, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call i32 @in_uint8p(i32 %82, i32* %83, i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32*, i32** %20, align 8
  %98 = call i32 @ui_paint_bitmap(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32* %97)
  br label %152

99:                                               ; preds = %29
  %100 = load i32, i32* %16, align 4
  %101 = and i32 %100, 1024
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %18, align 4
  br label %113

105:                                              ; preds = %99
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @in_uint8s(i32 %106, i32 2)
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @in_uint16_le(i32 %108, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @in_uint8s(i32 %111, i32 4)
  br label %113

113:                                              ; preds = %105, %103
  %114 = load i32, i32* %4, align 4
  %115 = load i32*, i32** %19, align 8
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @in_uint8p(i32 %114, i32* %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %15, align 4
  %122 = mul nsw i32 %120, %121
  %123 = call i64 @malloc(i32 %122)
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %20, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  br label %155

128:                                              ; preds = %113
  %129 = load i32*, i32** %20, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32*, i32** %19, align 8
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i64 @bitmap_decompress(i32* %129, i32 %130, i32 %131, i32* %132, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %128
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32*, i32** %20, align 8
  %146 = call i32 @ui_paint_bitmap(i32* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32* %145)
  br label %149

147:                                              ; preds = %128
  %148 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %137
  %150 = load i32*, i32** %20, align 8
  %151 = call i32 @free(i32* %150)
  br label %152

152:                                              ; preds = %149, %81
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %21, align 4
  br label %25

155:                                              ; preds = %127, %25
  ret void
}

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @ui_paint_bitmap(i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @bitmap_decompress(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
