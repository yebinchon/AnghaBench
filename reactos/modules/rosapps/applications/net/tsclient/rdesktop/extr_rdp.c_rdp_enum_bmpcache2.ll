; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_enum_bmpcache2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_enum_bmpcache2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BMPCACHE2_NUM_PSTCELLS = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@PDU_FLAG_FIRST = common dso_local global i64 0, align 8
@PDU_FLAG_LAST = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rdp_enum_bmpcache2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdp_enum_bmpcache2(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32, i32* @BMPCACHE2_NUM_PSTCELLS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @pstcache_enumerate(i32* %16, i32 2, i32* %15)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %90, %1
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %93

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub nsw i64 %23, %24
  %26 = call i64 @MIN(i64 %25, i32 169)
  store i64 %26, i64* %9, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %9, align 8
  %29 = mul i64 %28, 4
  %30 = add i64 24, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32* @rdp_init_data(i32* %27, i32 %31)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @False, align 4
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

37:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* @PDU_FLAG_FIRST, align 8
  %42 = load i64, i64* %10, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sle i64 %47, 169
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* @PDU_FLAG_LAST, align 8
  %51 = load i64, i64* %10, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @out_uint32_le(i32* %54, i64 0)
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @out_uint16_le(i32* %56, i64 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @out_uint16_le(i32* %59, i64 0)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @out_uint16_le(i32* %61, i64 0)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @out_uint16_le(i32* %63, i64 0)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @out_uint16_le(i32* %65, i64 0)
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @out_uint16_le(i32* %67, i64 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @out_uint32_le(i32* %70, i64 0)
  %72 = load i32*, i32** %4, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @out_uint32_le(i32* %72, i64 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i32, i32* %15, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %9, align 8
  %80 = mul i64 %79, 4
  %81 = call i32 @out_uint8a(i32* %75, i32 %78, i64 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @s_mark_end(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @rdp_send_data(i32* %84, i32* %85, i32 43)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %53
  %89 = load i32, i32* @False, align 4
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

90:                                               ; preds = %53
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %91, 169
  store i64 %92, i64* %8, align 8
  br label %18

93:                                               ; preds = %18
  %94 = load i32, i32* @True, align 4
  store i32 %94, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %93, %88, %35
  %96 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pstcache_enumerate(i32*, i32, i32*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32* @rdp_init_data(i32*, i32) #2

declare dso_local i32 @out_uint32_le(i32*, i64) #2

declare dso_local i32 @out_uint16_le(i32*, i64) #2

declare dso_local i32 @out_uint8a(i32*, i32, i64) #2

declare dso_local i32 @s_mark_end(i32*) #2

declare dso_local i32 @rdp_send_data(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
