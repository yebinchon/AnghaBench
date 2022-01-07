; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_bmpcache2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_bmpcache2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID_MASK = common dso_local global i32 0, align 4
@MODE_MASK = common dso_local global i32 0, align 4
@MODE_SHIFT = common dso_local global i32 0, align 4
@PERSIST = common dso_local global i32 0, align 4
@SQUARE = common dso_local global i32 0, align 4
@BUFSIZE_MASK = common dso_local global i32 0, align 4
@LONG_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"BMPCACHE2(compr=%d,flags=%x,cx=%d,cy=%d,id=%d,idx=%d,Bpp=%d,bs=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to decompress bitmap data\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"process_bmpcache2: ui_create_bitmap failed\0A\00", align 1
@y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i64)* @process_bmpcache2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bmpcache2(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ID_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MODE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MODE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PERSIST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %19, align 8
  %36 = call i32 @in_uint8p(i32 %34, i32* %35, i32 8)
  br label %37

37:                                               ; preds = %33, %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SQUARE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @in_uint8(i32 %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %13, align 4
  br label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @in_uint8(i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @in_uint8(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %42
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @in_uint16_be(i32 %55, i32 %56)
  %58 = load i32, i32* @BUFSIZE_MASK, align 4
  %59 = load i32, i32* %16, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @in_uint8(i32 %61, i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @LONG_FORMAT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @in_uint8(i32 %69, i32 %70)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @LONG_FORMAT, align 4
  %74 = xor i32 %72, %73
  %75 = shl i32 %74, 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %68, %54
  %79 = load i32, i32* %6, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @in_uint8p(i32 %79, i32* %80, i32 %81)
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @DEBUG(i8* %92)
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %78
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 %99, %100
  %102 = call i64 @malloc(i32 %101)
  %103 = inttoptr i64 %102 to i32*
  store i32* %103, i32** %18, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %164

107:                                              ; preds = %96
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** %17, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @bitmap_decompress(i32* %108, i32 %109, i32 %110, i32* %111, i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %107
  %117 = call i32 @DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32*, i32** %18, align 8
  %119 = call i32 @free(i32* %118)
  br label %164

120:                                              ; preds = %107
  br label %123

121:                                              ; preds = %78
  %122 = load i32*, i32** %17, align 8
  store i32* %122, i32** %18, align 8
  br label %123

123:                                              ; preds = %121, %120
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32*, i32** %18, align 8
  %128 = call i64 @ui_create_bitmap(i32* %124, i32 %125, i32 %126, i32* %127)
  store i64 %128, i64* %9, align 8
  %129 = load i64, i64* %9, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %123
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @cache_put_bitmap(i32* %132, i32 %133, i32 %134, i64 %135)
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @PERSIST, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %131
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32*, i32** %19, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32*, i32** %18, align 8
  %154 = call i32 @pstcache_save_bitmap(i32* %142, i32 %143, i32 %144, i32* %145, i32 %146, i32 %147, i32 %152, i32* %153)
  br label %155

155:                                              ; preds = %141, %131
  br label %158

156:                                              ; preds = %123
  %157 = call i32 @DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %155
  %159 = load i64, i64* %8, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @free(i32* %162)
  br label %164

164:                                              ; preds = %106, %116, %161, %158
  ret void
}

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @in_uint16_be(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bitmap_decompress(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @ui_create_bitmap(i32*, i32, i32, i32*) #1

declare dso_local i32 @cache_put_bitmap(i32*, i32, i32, i64) #1

declare dso_local i32 @pstcache_save_bitmap(i32*, i32, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
