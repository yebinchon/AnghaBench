; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_OleCreatePictureIndirect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_OleCreatePictureIndirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i16 }

@PICTYPE_UNINITIALIZED = common dso_local global i16 0, align 2
@IID_IPicture = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@PICTYPE_ENHMETAFILE = common dso_local global i16 0, align 2
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%d: got %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%d: got %d\0A\00", align 1
@PICTYPE_NONE = common dso_local global i16 0, align 2
@PICTYPE_BITMAP = common dso_local global i16 0, align 2
@E_FAIL = common dso_local global i32 0, align 4
@DEFAULT_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_OleCreatePictureIndirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OleCreatePictureIndirect() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 8, i32* %7, align 4
  %8 = load i16, i16* @PICTYPE_UNINITIALIZED, align 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i16 %8, i16* %9, align 4
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = bitcast i32** %3 to i8**
  %12 = call i32 @OleCreatePictureIndirect(%struct.TYPE_3__* %1, i32* @IID_IPicture, i32 %10, i8** %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @E_UNEXPECTED, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = trunc i32 %17 to i16
  %19 = call i32 (i32, i8*, i16, ...) @ok(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i16 signext %18)
  %20 = load i32*, i32** %3, align 8
  %21 = icmp eq i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %3, align 8
  %24 = ptrtoint i32* %23 to i16
  %25 = call i32 (i32, i8*, i16, ...) @ok(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i16 signext %24)
  %26 = load i16, i16* @PICTYPE_UNINITIALIZED, align 2
  store i16 %26, i16* %6, align 2
  br label %27

27:                                               ; preds = %172, %0
  %28 = load i16, i16* %6, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* @PICTYPE_ENHMETAFILE, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %175

33:                                               ; preds = %27
  %34 = load i16, i16* %6, align 2
  %35 = call i32 @create_picture(i16 signext %34, i32** %3)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @S_OK, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i16, i16* %6, align 2
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, i16, ...) @ok(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %40, i32 %41)
  store i16 -8531, i16* %5, align 2
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @IPicture_get_Type(i32* %43, i16* %5)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i16, i16* %6, align 2
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i32, i8*, i16, ...) @ok(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %49, i32 %50)
  %52 = load i16, i16* %5, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* %6, align 2
  %55 = sext i16 %54 to i32
  %56 = icmp eq i32 %53, %55
  %57 = zext i1 %56 to i32
  %58 = load i16, i16* %6, align 2
  %59 = load i16, i16* %5, align 2
  %60 = sext i16 %59 to i32
  %61 = call i32 (i32, i8*, i16, ...) @ok(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i16 signext %58, i32 %60)
  store i32 -559038737, i32* %2, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @IPicture_get_Handle(i32* %62, i32* %2)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @S_OK, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i16, i16* %6, align 2
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i32, i8*, i16, ...) @ok(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %68, i32 %69)
  %71 = load i16, i16* %5, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* @PICTYPE_UNINITIALIZED, align 2
  %74 = sext i16 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %33
  %77 = load i16, i16* %5, align 2
  %78 = sext i16 %77 to i32
  %79 = load i16, i16* @PICTYPE_NONE, align 2
  %80 = sext i16 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76, %33
  %83 = load i32, i32* %2, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load i16, i16* %6, align 2
  %87 = load i32, i32* %2, align 4
  %88 = call i32 (i32, i8*, i16, ...) @ok(i32 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %86, i32 %87)
  br label %101

89:                                               ; preds = %76
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %2, align 4
  %94 = icmp ne i32 %93, -559038737
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i1 [ false, %89 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = load i16, i16* %6, align 2
  %99 = load i32, i32* %2, align 4
  %100 = call i32 (i32, i8*, i16, ...) @ok(i32 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %82
  store i32 -559038737, i32* %2, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @IPicture_get_hPal(i32* %102, i32* %2)
  store i32 %103, i32* %4, align 4
  %104 = load i16, i16* %5, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* @PICTYPE_BITMAP, align 2
  %107 = sext i16 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %101
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i16, i16* %6, align 2
  %115 = load i32, i32* %4, align 4
  %116 = call i32 (i32, i8*, i16, ...) @ok(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %114, i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = icmp eq i32 %117, -1091576147
  %119 = zext i1 %118 to i32
  %120 = load i16, i16* %6, align 2
  %121 = load i32, i32* %2, align 4
  %122 = call i32 (i32, i8*, i16, ...) @ok(i32 %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %120, i32 %121)
  br label %142

123:                                              ; preds = %101
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @E_FAIL, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i16, i16* %6, align 2
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i32, i8*, i16, ...) @ok(i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %128, i32 %129)
  %131 = load i32, i32* %2, align 4
  %132 = icmp eq i32 %131, -559038737
  br i1 %132, label %136, label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %2, align 4
  %135 = icmp eq i32 %134, 0
  br label %136

136:                                              ; preds = %133, %123
  %137 = phi i1 [ true, %123 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  %139 = load i16, i16* %6, align 2
  %140 = load i32, i32* %2, align 4
  %141 = call i32 (i32, i8*, i16, ...) @ok(i32 %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %109
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* @DEFAULT_PALETTE, align 4
  %145 = call i32 @GetStockObject(i32 %144)
  %146 = call i32 @HandleToUlong(i32 %145)
  %147 = call i32 @IPicture_set_hPal(i32* %143, i32 %146)
  store i32 %147, i32* %4, align 4
  %148 = load i16, i16* %5, align 2
  %149 = sext i16 %148 to i32
  %150 = load i16, i16* @PICTYPE_BITMAP, align 2
  %151 = sext i16 %150 to i32
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %142
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @S_OK, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i16, i16* %6, align 2
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (i32, i8*, i16, ...) @ok(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %158, i32 %159)
  br label %169

161:                                              ; preds = %142
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @E_FAIL, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i16, i16* %6, align 2
  %167 = load i32, i32* %4, align 4
  %168 = call i32 (i32, i8*, i16, ...) @ok(i32 %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i16 signext %166, i32 %167)
  br label %169

169:                                              ; preds = %161, %153
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @IPicture_Release(i32* %170)
  br label %172

172:                                              ; preds = %169
  %173 = load i16, i16* %6, align 2
  %174 = add i16 %173, 1
  store i16 %174, i16* %6, align 2
  br label %27

175:                                              ; preds = %27
  ret void
}

declare dso_local i32 @OleCreatePictureIndirect(%struct.TYPE_3__*, i32*, i32, i8**) #1

declare dso_local i32 @ok(i32, i8*, i16 signext, ...) #1

declare dso_local i32 @create_picture(i16 signext, i32**) #1

declare dso_local i32 @IPicture_get_Type(i32*, i16*) #1

declare dso_local i32 @IPicture_get_Handle(i32*, i32*) #1

declare dso_local i32 @IPicture_get_hPal(i32*, i32*) #1

declare dso_local i32 @IPicture_set_hPal(i32*, i32) #1

declare dso_local i32 @HandleToUlong(i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @IPicture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
