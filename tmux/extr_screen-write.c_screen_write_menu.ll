; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_menu.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64 }
%struct.menu = type { i64, i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.grid_cell = type { i32 }

@grid_default_cell = common dso_local global i32 0, align 4
@GRID_ATTR_REVERSE = common dso_local global i32 0, align 4
@GRID_ATTR_DIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_menu(%struct.screen_write_ctx* %0, %struct.menu* %1, i32 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca %struct.menu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.grid_cell, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store %struct.menu* %1, %struct.menu** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %14, i32 0, i32 0
  %16 = load %struct.screen*, %struct.screen** %15, align 8
  store %struct.screen* %16, %struct.screen** %7, align 8
  %17 = load %struct.screen*, %struct.screen** %7, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.screen*, %struct.screen** %7, align 8
  %21 = getelementptr inbounds %struct.screen, %struct.screen* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = call i32 @memcpy(%struct.grid_cell* %8, i32* @grid_default_cell, i32 4)
  %24 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %25 = load %struct.menu*, %struct.menu** %5, align 8
  %26 = getelementptr inbounds %struct.menu, %struct.menu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 4
  %29 = load %struct.menu*, %struct.menu** %5, align 8
  %30 = getelementptr inbounds %struct.menu, %struct.menu* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 2
  %33 = call i32 @screen_write_box(%struct.screen_write_ctx* %24, i64 %28, i64 %32)
  %34 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 2
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %34, i64 %36, i64 %37, i32 0)
  %39 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %40 = load %struct.menu*, %struct.menu** %5, align 8
  %41 = getelementptr inbounds %struct.menu, %struct.menu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.menu*, %struct.menu** %5, align 8
  %44 = getelementptr inbounds %struct.menu, %struct.menu* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @format_draw(%struct.screen_write_ctx* %39, %struct.grid_cell* %8, i64 %42, i8* %45, i32* null)
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %170, %3
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.menu*, %struct.menu** %5, align 8
  %50 = getelementptr inbounds %struct.menu, %struct.menu* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %173

53:                                               ; preds = %47
  %54 = load %struct.menu*, %struct.menu** %5, align 8
  %55 = getelementptr inbounds %struct.menu, %struct.menu* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %53
  %64 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %67, %68
  %70 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %64, i64 %65, i64 %69, i32 0)
  %71 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %72 = load %struct.menu*, %struct.menu** %5, align 8
  %73 = getelementptr inbounds %struct.menu, %struct.menu* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 4
  %76 = call i32 @screen_write_hline(%struct.screen_write_ctx* %71, i64 %75, i32 1, i32 1)
  br label %169

77:                                               ; preds = %53
  %78 = load i32, i32* %6, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 45
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %92 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %85, %80, %77
  %96 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, 2
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %100, %101
  %103 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %96, i64 %98, i64 %102, i32 0)
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %113, %95
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.menu*, %struct.menu** %5, align 8
  %107 = getelementptr inbounds %struct.menu, %struct.menu* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %112 = call i32 @screen_write_putc(%struct.screen_write_ctx* %111, %struct.grid_cell* %8, i8 signext 32)
  br label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %12, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %12, align 8
  br label %104

116:                                              ; preds = %104
  %117 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 2
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %121, %122
  %124 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %117, i64 %119, i64 %123, i32 0)
  %125 = load i8*, i8** %13, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 45
  br i1 %128, label %129, label %147

129:                                              ; preds = %116
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %13, align 8
  %132 = load i32, i32* @GRID_ATTR_DIM, align 4
  %133 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %137 = load %struct.menu*, %struct.menu** %5, align 8
  %138 = getelementptr inbounds %struct.menu, %struct.menu* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 @format_draw(%struct.screen_write_ctx* %136, %struct.grid_cell* %8, i64 %139, i8* %140, i32* null)
  %142 = load i32, i32* @GRID_ATTR_DIM, align 4
  %143 = xor i32 %142, -1
  %144 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %154

147:                                              ; preds = %116
  %148 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %149 = load %struct.menu*, %struct.menu** %5, align 8
  %150 = getelementptr inbounds %struct.menu, %struct.menu* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @format_draw(%struct.screen_write_ctx* %148, %struct.grid_cell* %8, i64 %151, i8* %152, i32* null)
  br label %154

154:                                              ; preds = %147, %129
  %155 = load i32, i32* %6, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i64, i64* %11, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %164 = xor i32 %163, -1
  %165 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %164
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %162, %157, %154
  br label %169

169:                                              ; preds = %168, %63
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %11, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %11, align 8
  br label %47

173:                                              ; preds = %47
  %174 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load i64, i64* %10, align 8
  %177 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %174, i64 %175, i64 %176)
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @screen_write_box(%struct.screen_write_ctx*, i64, i64) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i64, i64, i32) #1

declare dso_local i32 @format_draw(%struct.screen_write_ctx*, %struct.grid_cell*, i64, i8*, i32*) #1

declare dso_local i32 @screen_write_hline(%struct.screen_write_ctx*, i64, i32, i32) #1

declare dso_local i32 @screen_write_putc(%struct.screen_write_ctx*, %struct.grid_cell*, i8 signext) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
