; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_vnputs.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_vnputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.grid_cell = type { i32, %struct.utf8_data }
%struct.utf8_data = type { i64, i64 }

@UTF8_MORE = common dso_local global i64 0, align 8
@UTF8_DONE = common dso_local global i32 0, align 4
@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_vnputs(%struct.screen_write_ctx* %0, i64 %1, %struct.grid_cell* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.screen_write_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.grid_cell*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.grid_cell, align 8
  %12 = alloca %struct.utf8_data*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.grid_cell* %2, %struct.grid_cell** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %11, i32 0, i32 1
  store %struct.utf8_data* %18, %struct.utf8_data** %12, align 8
  store i64 0, i64* %16, align 8
  %19 = load %struct.grid_cell*, %struct.grid_cell** %8, align 8
  %20 = call i32 @memcpy(%struct.grid_cell* %11, %struct.grid_cell* %19, i32 24)
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @xvasprintf(i8** %13, i8* %21, i32 %22)
  %24 = load i8*, i8** %13, align 8
  store i8* %24, i8** %14, align 8
  br label %25

25:                                               ; preds = %143, %72, %5
  %26 = load i8*, i8** %14, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %144

30:                                               ; preds = %25
  %31 = load i8*, i8** %14, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sgt i32 %33, 127
  br i1 %34, label %35, label %103

35:                                               ; preds = %30
  %36 = load %struct.utf8_data*, %struct.utf8_data** %12, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @utf8_open(%struct.utf8_data* %36, i8 signext %38)
  %40 = load i64, i64* @UTF8_MORE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %35
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %14, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load %struct.utf8_data*, %struct.utf8_data** %12, align 8
  %49 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 1
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %144

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %63, %54
  %56 = load %struct.utf8_data*, %struct.utf8_data** %12, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @utf8_append(%struct.utf8_data* %56, i8 signext %58)
  store i32 %59, i32* %17, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* @UTF8_MORE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  br label %55

66:                                               ; preds = %55
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %14, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @UTF8_DONE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %25

73:                                               ; preds = %66
  %74 = load i64, i64* %7, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i64, i64* %16, align 8
  %78 = load %struct.utf8_data*, %struct.utf8_data** %12, align 8
  %79 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  %82 = load i64, i64* %7, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %6, align 8
  %91 = call i32 @screen_write_putc(%struct.screen_write_ctx* %90, %struct.grid_cell* %11, i8 signext 32)
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %16, align 8
  br label %85

94:                                               ; preds = %85
  br label %144

95:                                               ; preds = %76, %73
  %96 = load %struct.utf8_data*, %struct.utf8_data** %12, align 8
  %97 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %16, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %16, align 8
  %101 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %6, align 8
  %102 = call i32 @screen_write_cell(%struct.screen_write_ctx* %101, %struct.grid_cell* %11)
  br label %143

103:                                              ; preds = %35, %30
  %104 = load i64, i64* %7, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i64, i64* %16, align 8
  %108 = add i64 %107, 1
  %109 = load i64, i64* %7, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %144

112:                                              ; preds = %106, %103
  %113 = load i8*, i8** %14, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %119 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = xor i32 %120, %118
  store i32 %121, i32* %119, align 8
  br label %140

122:                                              ; preds = %112
  %123 = load i8*, i8** %14, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sgt i32 %125, 31
  br i1 %126, label %127, label %139

127:                                              ; preds = %122
  %128 = load i8*, i8** %14, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp slt i32 %130, 127
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load i64, i64* %16, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %16, align 8
  %135 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %6, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i32 @screen_write_putc(%struct.screen_write_ctx* %135, %struct.grid_cell* %11, i8 signext %137)
  br label %139

139:                                              ; preds = %132, %127, %122
  br label %140

140:                                              ; preds = %139, %117
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %14, align 8
  br label %143

143:                                              ; preds = %140, %95
  br label %25

144:                                              ; preds = %111, %94, %53, %25
  %145 = load i8*, i8** %13, align 8
  %146 = call i32 @free(i8* %145)
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, %struct.grid_cell*, i32) #1

declare dso_local i32 @xvasprintf(i8**, i8*, i32) #1

declare dso_local i64 @utf8_open(%struct.utf8_data*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @screen_write_putc(%struct.screen_write_ctx*, %struct.grid_cell*, i8 signext) #1

declare dso_local i32 @screen_write_cell(%struct.screen_write_ctx*, %struct.grid_cell*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
