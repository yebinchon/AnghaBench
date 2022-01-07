; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_compress.c_HUF_compress4X_usingCTable_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_compress.c_HUF_compress4X_usingCTable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32*, i32)* @HUF_compress4X_usingCTable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_compress4X_usingCTable_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %20, 3
  %22 = udiv i64 %21, 4
  store i64 %22, i64* %14, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %16, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %17, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %17, align 8
  store i32* %33, i32** %19, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %34, 17
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %179

37:                                               ; preds = %6
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %38, 12
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i64 0, i64* %7, align 8
  br label %179

41:                                               ; preds = %37
  %42 = load i32*, i32** %19, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  store i32* %43, i32** %19, align 8
  %44 = load i32, i32* @cSize, align 4
  %45 = load i32*, i32** %19, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %15, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @HUF_compress1X_usingCTable_internal(i32* %45, i32 %52, i32* %53, i64 %54, i32* %55, i32 %56)
  %58 = call i32 @CHECK_V_F(i32 %44, i32 %57)
  %59 = load i32, i32* @cSize, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  br label %179

62:                                               ; preds = %41
  %63 = load i32, i32* @cSize, align 4
  %64 = icmp sle i32 %63, 65535
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* @cSize, align 4
  %69 = call i32 @MEM_writeLE16(i32* %67, i32 %68)
  %70 = load i32, i32* @cSize, align 4
  %71 = load i32*, i32** %19, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %19, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %15, align 8
  %77 = load i32, i32* @cSize, align 4
  %78 = load i32*, i32** %19, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = load i32*, i32** %19, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %15, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @HUF_compress1X_usingCTable_internal(i32* %78, i32 %85, i32* %86, i64 %87, i32* %88, i32 %89)
  %91 = call i32 @CHECK_V_F(i32 %77, i32 %90)
  %92 = load i32, i32* @cSize, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %62
  store i64 0, i64* %7, align 8
  br label %179

95:                                               ; preds = %62
  %96 = load i32, i32* @cSize, align 4
  %97 = icmp sle i32 %96, 65535
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32*, i32** %17, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* @cSize, align 4
  %103 = call i32 @MEM_writeLE16(i32* %101, i32 %102)
  %104 = load i32, i32* @cSize, align 4
  %105 = load i32*, i32** %19, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %19, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 %108
  store i32* %110, i32** %15, align 8
  %111 = load i32, i32* @cSize, align 4
  %112 = load i32*, i32** %19, align 8
  %113 = load i32*, i32** %18, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %15, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @HUF_compress1X_usingCTable_internal(i32* %112, i32 %119, i32* %120, i64 %121, i32* %122, i32 %123)
  %125 = call i32 @CHECK_V_F(i32 %111, i32 %124)
  %126 = load i32, i32* @cSize, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %95
  store i64 0, i64* %7, align 8
  br label %179

129:                                              ; preds = %95
  %130 = load i32, i32* @cSize, align 4
  %131 = icmp sle i32 %130, 65535
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32*, i32** %17, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  %136 = load i32, i32* @cSize, align 4
  %137 = call i32 @MEM_writeLE16(i32* %135, i32 %136)
  %138 = load i32, i32* @cSize, align 4
  %139 = load i32*, i32** %19, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %19, align 8
  %142 = load i64, i64* %14, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 %142
  store i32* %144, i32** %15, align 8
  %145 = load i32, i32* @cSize, align 4
  %146 = load i32*, i32** %19, align 8
  %147 = load i32*, i32** %18, align 8
  %148 = load i32*, i32** %19, align 8
  %149 = ptrtoint i32* %147 to i64
  %150 = ptrtoint i32* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = load i32*, i32** %15, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = ptrtoint i32* %155 to i64
  %158 = ptrtoint i32* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @HUF_compress1X_usingCTable_internal(i32* %146, i32 %153, i32* %154, i64 %160, i32* %161, i32 %162)
  %164 = call i32 @CHECK_V_F(i32 %145, i32 %163)
  %165 = load i32, i32* @cSize, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %129
  store i64 0, i64* %7, align 8
  br label %179

168:                                              ; preds = %129
  %169 = load i32, i32* @cSize, align 4
  %170 = load i32*, i32** %19, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %19, align 8
  %173 = load i32*, i32** %19, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = ptrtoint i32* %173 to i64
  %176 = ptrtoint i32* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 4
  store i64 %178, i64* %7, align 8
  br label %179

179:                                              ; preds = %168, %167, %128, %94, %61, %40, %36
  %180 = load i64, i64* %7, align 8
  ret i64 %180
}

declare dso_local i32 @CHECK_V_F(i32, i32) #1

declare dso_local i32 @HUF_compress1X_usingCTable_internal(i32*, i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MEM_writeLE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
