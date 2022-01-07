; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetStockObject.c_Test_GetStockObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetStockObject.c_Test_GetStockObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@WHITE_BRUSH = common dso_local global i32 0, align 4
@GDI_HANDLE_STOCK_MASK = common dso_local global i64 0, align 8
@GDI_OBJECT_TYPE_BRUSH = common dso_local global i64 0, align 8
@LTGRAY_BRUSH = common dso_local global i32 0, align 4
@GRAY_BRUSH = common dso_local global i32 0, align 4
@DKGRAY_BRUSH = common dso_local global i32 0, align 4
@BLACK_BRUSH = common dso_local global i32 0, align 4
@NULL_BRUSH = common dso_local global i32 0, align 4
@WHITE_PEN = common dso_local global i32 0, align 4
@GDI_OBJECT_TYPE_PEN = common dso_local global i64 0, align 8
@BLACK_PEN = common dso_local global i32 0, align 4
@NULL_PEN = common dso_local global i32 0, align 4
@OEM_FIXED_FONT = common dso_local global i32 0, align 4
@GDI_OBJECT_TYPE_FONT = common dso_local global i64 0, align 8
@ANSI_FIXED_FONT = common dso_local global i32 0, align 4
@ANSI_VAR_FONT = common dso_local global i32 0, align 4
@SYSTEM_FONT = common dso_local global i32 0, align 4
@DEVICE_DEFAULT_FONT = common dso_local global i32 0, align 4
@DEFAULT_PALETTE = common dso_local global i32 0, align 4
@GDI_OBJECT_TYPE_PALETTE = common dso_local global i64 0, align 8
@SYSTEM_FIXED_FONT = common dso_local global i32 0, align 4
@DEFAULT_GUI_FONT = common dso_local global i32 0, align 4
@DC_BRUSH = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@GDI_OBJECT_TYPE_COLORSPACE = common dso_local global i64 0, align 8
@GDI_OBJECT_TYPE_BITMAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GetStockObject() #0 {
  %1 = load i64, i64* @ERROR_SUCCESS, align 8
  %2 = call i32 @SetLastError(i64 %1)
  %3 = call i32* @GetStockObject(i32 0)
  %4 = icmp ne i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @RTEST(i32 %5)
  %7 = call i32* @GetStockObject(i32 20)
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @TEST(i32 %9)
  %11 = call i32* @GetStockObject(i32 21)
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @RTEST(i32 %13)
  %15 = call i32* @GetStockObject(i32 -1)
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @RTEST(i32 %17)
  %19 = call i32* @GetStockObject(i32 9)
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @RTEST(i32 %21)
  %23 = call i32* @GetStockObject(i32 22)
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @RTEST(i32 %25)
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @RTEST(i32 %30)
  %32 = load i32, i32* @WHITE_BRUSH, align 4
  %33 = call i32* @GetStockObject(i32 %32)
  %34 = ptrtoint i32* %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %0
  %37 = load i64, i64* @GDI_HANDLE_STOCK_MASK, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %0
  %40 = phi i1 [ false, %0 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @RTEST(i32 %41)
  %43 = load i32, i32* @WHITE_BRUSH, align 4
  %44 = call i32* @GetStockObject(i32 %43)
  %45 = call i64 @GDI_HANDLE_GET_TYPE(i32* %44)
  %46 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @RTEST(i32 %48)
  %50 = load i32, i32* @LTGRAY_BRUSH, align 4
  %51 = call i32* @GetStockObject(i32 %50)
  %52 = call i64 @GDI_HANDLE_GET_TYPE(i32* %51)
  %53 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @RTEST(i32 %55)
  %57 = load i32, i32* @GRAY_BRUSH, align 4
  %58 = call i32* @GetStockObject(i32 %57)
  %59 = call i64 @GDI_HANDLE_GET_TYPE(i32* %58)
  %60 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @RTEST(i32 %62)
  %64 = load i32, i32* @DKGRAY_BRUSH, align 4
  %65 = call i32* @GetStockObject(i32 %64)
  %66 = call i64 @GDI_HANDLE_GET_TYPE(i32* %65)
  %67 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @RTEST(i32 %69)
  %71 = load i32, i32* @BLACK_BRUSH, align 4
  %72 = call i32* @GetStockObject(i32 %71)
  %73 = call i64 @GDI_HANDLE_GET_TYPE(i32* %72)
  %74 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @RTEST(i32 %76)
  %78 = load i32, i32* @NULL_BRUSH, align 4
  %79 = call i32* @GetStockObject(i32 %78)
  %80 = call i64 @GDI_HANDLE_GET_TYPE(i32* %79)
  %81 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @RTEST(i32 %83)
  %85 = load i32, i32* @WHITE_PEN, align 4
  %86 = call i32* @GetStockObject(i32 %85)
  %87 = call i64 @GDI_HANDLE_GET_TYPE(i32* %86)
  %88 = load i64, i64* @GDI_OBJECT_TYPE_PEN, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @RTEST(i32 %90)
  %92 = load i32, i32* @BLACK_PEN, align 4
  %93 = call i32* @GetStockObject(i32 %92)
  %94 = call i64 @GDI_HANDLE_GET_TYPE(i32* %93)
  %95 = load i64, i64* @GDI_OBJECT_TYPE_PEN, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @RTEST(i32 %97)
  %99 = load i32, i32* @NULL_PEN, align 4
  %100 = call i32* @GetStockObject(i32 %99)
  %101 = call i64 @GDI_HANDLE_GET_TYPE(i32* %100)
  %102 = load i64, i64* @GDI_OBJECT_TYPE_PEN, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @RTEST(i32 %104)
  %106 = load i32, i32* @OEM_FIXED_FONT, align 4
  %107 = call i32* @GetStockObject(i32 %106)
  %108 = call i64 @GDI_HANDLE_GET_TYPE(i32* %107)
  %109 = load i64, i64* @GDI_OBJECT_TYPE_FONT, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @RTEST(i32 %111)
  %113 = load i32, i32* @ANSI_FIXED_FONT, align 4
  %114 = call i32* @GetStockObject(i32 %113)
  %115 = call i64 @GDI_HANDLE_GET_TYPE(i32* %114)
  %116 = load i64, i64* @GDI_OBJECT_TYPE_FONT, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @RTEST(i32 %118)
  %120 = load i32, i32* @ANSI_VAR_FONT, align 4
  %121 = call i32* @GetStockObject(i32 %120)
  %122 = call i64 @GDI_HANDLE_GET_TYPE(i32* %121)
  %123 = load i64, i64* @GDI_OBJECT_TYPE_FONT, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @TEST(i32 %125)
  %127 = load i32, i32* @SYSTEM_FONT, align 4
  %128 = call i32* @GetStockObject(i32 %127)
  %129 = call i64 @GDI_HANDLE_GET_TYPE(i32* %128)
  %130 = load i64, i64* @GDI_OBJECT_TYPE_FONT, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @RTEST(i32 %132)
  %134 = load i32, i32* @DEVICE_DEFAULT_FONT, align 4
  %135 = call i32* @GetStockObject(i32 %134)
  %136 = call i64 @GDI_HANDLE_GET_TYPE(i32* %135)
  %137 = load i64, i64* @GDI_OBJECT_TYPE_FONT, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @RTEST(i32 %139)
  %141 = load i32, i32* @DEFAULT_PALETTE, align 4
  %142 = call i32* @GetStockObject(i32 %141)
  %143 = call i64 @GDI_HANDLE_GET_TYPE(i32* %142)
  %144 = load i64, i64* @GDI_OBJECT_TYPE_PALETTE, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @RTEST(i32 %146)
  %148 = load i32, i32* @SYSTEM_FIXED_FONT, align 4
  %149 = call i32* @GetStockObject(i32 %148)
  %150 = call i64 @GDI_HANDLE_GET_TYPE(i32* %149)
  %151 = load i64, i64* @GDI_OBJECT_TYPE_FONT, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @RTEST(i32 %153)
  %155 = load i32, i32* @DEFAULT_GUI_FONT, align 4
  %156 = call i32* @GetStockObject(i32 %155)
  %157 = call i64 @GDI_HANDLE_GET_TYPE(i32* %156)
  %158 = load i64, i64* @GDI_OBJECT_TYPE_FONT, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @RTEST(i32 %160)
  %162 = load i32, i32* @DC_BRUSH, align 4
  %163 = call i32* @GetStockObject(i32 %162)
  %164 = call i64 @GDI_HANDLE_GET_TYPE(i32* %163)
  %165 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @RTEST(i32 %167)
  %169 = load i32, i32* @DC_PEN, align 4
  %170 = call i32* @GetStockObject(i32 %169)
  %171 = call i64 @GDI_HANDLE_GET_TYPE(i32* %170)
  %172 = load i64, i64* @GDI_OBJECT_TYPE_PEN, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @RTEST(i32 %174)
  %176 = call i32* @GetStockObject(i32 20)
  %177 = call i64 @GDI_HANDLE_GET_TYPE(i32* %176)
  %178 = load i64, i64* @GDI_OBJECT_TYPE_COLORSPACE, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @TEST(i32 %180)
  %182 = call i32* @GetStockObject(i32 21)
  %183 = call i64 @GDI_HANDLE_GET_TYPE(i32* %182)
  %184 = load i64, i64* @GDI_OBJECT_TYPE_BITMAP, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @RTEST(i32 %186)
  ret void
}

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i32 @RTEST(i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @TEST(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @GDI_HANDLE_GET_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
